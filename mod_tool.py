import os
import sys
import glob
import json
import shutil
import datetime
import subprocess

# ==============================================================================
# CONFIGURATION & PATH SETUP
# ==============================================================================

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
TOOLS_DIR = os.path.join(BASE_DIR, "Tools")
WORKSPACE = os.path.join(BASE_DIR, "Workspace")
PRESETS_DIR = os.path.join(WORKSPACE, "presets")
LOGS_DIR = os.path.join(BASE_DIR, "Logs")
LOG_FILE = os.path.join(LOGS_DIR, "log.txt")

# LGL Source Code Root Directory
LGL_SRC_DIR = os.path.join(
    BASE_DIR,
    "LGL_Source",
    "Android-Mod-Menu",
    "Android-Mod-Menu-5.0",
    "app",
    "src",
    "main"
)

# Tool Binary Auto-Discovery
APKTOOL_JAR = os.path.join(TOOLS_DIR, "apktool_3.0.3.jar")
SIGNER_JAR = os.path.join(TOOLS_DIR, "uber-apk-signer-1.3.0.jar")


# ==============================================================================
# UNIVERSAL PATH AUTO-DISCOVERY ENGINE
# ==============================================================================

def find_ndk_build():
    """Dynamically resolves ndk-build across environment, system PATH, and user directories"""
    # 1. Check system PATH
    which_ndk = shutil.which("ndk-build.cmd") or shutil.which("ndk-build")
    if which_ndk and os.path.exists(which_ndk):
        return which_ndk

    # 2. Check ANDROID_NDK_HOME or NDK_HOME environment variables
    env_ndk = os.environ.get("ANDROID_NDK_HOME") or os.environ.get("NDK_HOME")
    if env_ndk:
        candidate = os.path.join(env_ndk, "ndk-build.cmd")
        if os.path.exists(candidate):
            return candidate

    # 3. Dynamically search Android SDK NDK folder for current user
    user_home = os.path.expanduser("~")
    sdk_ndk_dir = os.path.join(user_home, "AppData", "Local", "Android", "Sdk", "ndk")
    if os.path.exists(sdk_ndk_dir):
        versions = glob.glob(os.path.join(sdk_ndk_dir, "*"))
        for v_dir in sorted(versions, reverse=True):
            candidate = os.path.join(v_dir, "ndk-build.cmd")
            if os.path.exists(candidate):
                return candidate

    # 4. Search Downloads folder for any extracted NDK
    downloads_dir = os.path.join(user_home, "Downloads")
    if os.path.exists(downloads_dir):
        candidates = glob.glob(os.path.join(downloads_dir, "android-ndk*", "ndk-build.cmd")) + \
                     glob.glob(os.path.join(downloads_dir, "*", "android-ndk*", "ndk-build.cmd"))
        if candidates:
            return candidates[0]

    # 5. Fallback check C:\Android
    if os.path.exists(r"C:\Android\ndk-build.cmd"):
        return r"C:\Android\ndk-build.cmd"

    return None


def find_zipalign():
    """Dynamically resolves zipalign across Android SDK build-tools"""
    # 1. Check system PATH
    which_zip = shutil.which("zipalign.exe") or shutil.which("zipalign")
    if which_zip and os.path.exists(which_zip):
        return which_zip

    # 2. Check ANDROID_HOME or ANDROID_SDK_ROOT environment variables
    env_sdk = os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT")
    if env_sdk:
        build_tools = os.path.join(env_sdk, "build-tools")
        if os.path.exists(build_tools):
            for v_dir in sorted(glob.glob(os.path.join(build_tools, "*")), reverse=True):
                candidate = os.path.join(v_dir, "zipalign.exe")
                if os.path.exists(candidate):
                    return candidate

    # 3. Dynamically search current user's Android SDK build-tools
    user_home = os.path.expanduser("~")
    sdk_build_tools = os.path.join(user_home, "AppData", "Local", "Android", "Sdk", "build-tools")
    if os.path.exists(sdk_build_tools):
        for v_dir in sorted(glob.glob(os.path.join(sdk_build_tools, "*")), reverse=True):
            candidate = os.path.join(v_dir, "zipalign.exe")
            if os.path.exists(candidate):
                return candidate

    return None


# Dynamic Global Discovery
NDK_BUILD = find_ndk_build()
ZIPALIGN = find_zipalign()


# ==============================================================================
# AUTOMATED LOGGING ENGINE (Logs/log.txt)
# ==============================================================================

def setup_logger():
    os.makedirs(LOGS_DIR, exist_ok=True)
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    write_log(f"\n" + "=" * 60)
    write_log(f"=== MOD INJECTOR SESSION STARTED: {timestamp} ===")
    write_log("=" * 60)

def write_log(msg):
    timestamp = datetime.datetime.now().strftime("[%Y-%m-%d %H:%M:%S]")
    clean_msg = f"{timestamp} {msg}\n"
    try:
        os.makedirs(LOGS_DIR, exist_ok=True)
        with open(LOG_FILE, "a", encoding="utf-8") as f:
            f.write(clean_msg)
    except Exception:
        pass

def log_step(step_num, title):
    msg = f"[*] STEP {step_num}: {title}"
    print(f"\n" + "=" * 60)
    print(f" {msg}")
    print("=" * 60)
    write_log(msg)

def log_success(msg):
    out = f" [+] SUCCESS: {msg}"
    print(out)
    write_log(f"[SUCCESS] {msg}")

def log_info(msg):
    out = f" [*] INFO: {msg}"
    print(out)
    write_log(f"[INFO] {msg}")

def log_warning(msg):
    out = f" [!] WARNING: {msg}"
    print(out)
    write_log(f"[WARNING] {msg}")

def log_error(msg):
    out = f" [-] ERROR: {msg}"
    print(out)
    write_log(f"[ERROR] {msg}")

def run_cmd(cmd, cwd=None):
    log_info(f"Executing command: {cmd}")
    result = subprocess.run(cmd, shell=True, cwd=cwd, capture_output=True, text=True)
    if result.stdout:
        write_log(f"[STDOUT]\n{result.stdout.strip()}")
    if result.stderr:
        write_log(f"[STDERR]\n{result.stderr.strip()}")
    if result.returncode != 0:
        log_error(f"Command failed with exit code {result.returncode}")
        if result.stdout:
            print(f"Stdout:\n{result.stdout}")
        if result.stderr:
            print(f"Stderr:\n{result.stderr}")
        sys.exit(1)
    return result.stdout


# ==============================================================================
# DEFAULT CONFIGURATION & INTERACTIVE CONFIGURATOR
# ==============================================================================

DEFAULT_VECTOR_ICON_B64 = "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH5wgDEwcxK22Y3wAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmhoAAAC20lEQVR42u3bv2sUQRTH8c8lR/4B/gGOIohIohZC0EIsLURsLJQipLBRC4ugpY2lhY2IpX8AC3sLQTsRtRBsLEQUC4sIIpIod3yR883L7u3N7u7N3e293wODu43Lzb3v/fPme292LszMzMzMzMzMzMzMzMzMzMzMzGzOunL97oP/E6O4jg2o4C4e4w1+m3XbM32zMSoYRQfL2I1pDKO3/R6dtn1iP9p4h9P45M3z0m6A213A3mCchI/Rj33iO442v42sX3/x4/33SGsCezp0fQ+vMIZ+1Cj9Xy59G3bX8vS7g1+4glpL/q83/oAOHmIvtphF6/sNfMM1vG8xXm1L4E3Uog30m/h2s4XbX/sO/IeP2EIlit+053sAewO1uI43mI14L28wG3F8t/s/h2XfM9hbgf2iU8I5fE04Xms2/20x3sX8L6G36/6k8A4HsCeS7w94h2u44R/AtuA/XAtfC9vI3mD0T9x8q8/jD7I4f28C3UeM8j4sSngH84GvOIXZ2PvxEmdxD/3mU7s7yE52qXgS8yGvg5a9GfO4gq/oxYl3A4+wX2cCWYjS4m6m0I8j31A858/f4yD2YjF5z93p9aN1J2iXit/wU2fC4oT8Irb3SvwW8mO43I3aP+sO4D7msmzxB42F249r4Xk3X0kXnMQM9qA/mNfWjH94h8PYS9IudvYm33O39/8jA8F349503/d33E6v/4zDOIo+7InA8R+3v333s/i07s2mIn4pU/kErmMllS7M/6M46k50A72o43c3At32vR3aP2sX9nfgpznJ29iO3ZjEaeyKeB9/cBXf3v0I82M0Isc0eA/m44q5P1/fJv/R9vH8/TjE470N3/An2f2I2v/t2r1/3/f3j/934j7vNf4sX7U4v4xOfMZ1/MR13MQVnMElvIn/8/1O4oH8XNbf68TfxmXGfE/8w21cwjGcxH7slY8433m4i3A33878b/q32u32/S3mAAAAAElEQVR"

DEFAULT_CONFIG = {
    "lib_name": "MyLibName",
    "toast_msg": "Modded by Shiyar_makesmod",
    "menu_title": "Modded by Shiyar_makesmod",
    "menu_subtitle": "LGL Mod Menu Injector Tool",
    "icon_b64": DEFAULT_VECTOR_ICON_B64,
    "features": [
        {"id": -100, "type": "Category", "title": "Player Options"},
        {"id": 100, "type": "Toggle", "title": "God Mode", "default": False, "offset": "", "hex": ""},
        {"id": 101, "type": "SeekBar", "title": "Speed Multiplier", "min": 1, "max": 10, "default": 1, "offset": ""},
        {"id": 102, "type": "Button", "title": "Add 1000 Coins", "offset": "", "hex": ""}
    ]
}


def interactive_configurator():
    """Interactive Mod Menu Configurator & Editor Engine"""
    os.makedirs(PRESETS_DIR, exist_ok=True)
    config = json.loads(json.dumps(DEFAULT_CONFIG))

    print("\n" + "=" * 60)
    print("    INTERACTIVE MOD MENU CONFIGURATOR / EDITOR    ")
    print("=" * 60)

    while True:
        icon_len = len(config.get("icon_b64", DEFAULT_VECTOR_ICON_B64))
        print("\n --- CONFIGURATION MENU ---")
        print(f" [1] Library & Toast Settings (Lib Name: '{config['lib_name']}')")
        print(f" [2] Feature List Builder ({len(config['features'])} items configured)")
        print(" [3] Memory Offset & Hex Patch Manager")
        print(" [4] Load Preset from File")
        print(" [5] Save Preset to File")
        print(f" [7] Floating Icon / Image Base64 Editor (Length: {icon_len} chars)")
        print(" [6] Proceed with Current Configuration & Inject ->")

        choice = input("\nSelect Option [1-7]: ").strip()

        if choice == "1":
            edit_library_settings(config)
        elif choice == "2":
            edit_features_list(config)
        elif choice == "3":
            edit_offset_manager(config)
        elif choice == "4":
            loaded = load_preset()
            if loaded:
                config = loaded
        elif choice == "5":
            save_preset(config)
        elif choice == "7":
            edit_icon_image(config)
        elif choice == "6":
            print("\n [+] Configuration confirmed! Proceeding to C++ code generation...")
            break
        else:
            print(" [!] Invalid option. Please enter 1-7.")

    return config


def edit_icon_image(config):
    import base64
    while True:
        print("\n --- FLOATING ICON / IMAGE BASE64 EDITOR ---")
        curr_b64 = config.get("icon_b64", DEFAULT_VECTOR_ICON_B64)
        print(f" Current Icon Base64 Length: {len(curr_b64)} characters")

        print("\n Options:")
        print("  [1] Convert Image File to Base64 (PNG, JPG, WEBP)")
        print("  [2] Load Base64 Text File (.txt)")
        print("  [3] Enter / Paste Raw Base64 String")
        print("  [4] Reset to Default 'MENU' Vector Icon")
        print("  [5] Back to Main Configuration Menu")

        opt = input("\n Select Option [1-5]: ").strip()

        if opt == "5" or not opt:
            break
        elif opt == "1":
            path = input("\n Drag & Drop or Enter Image File Path (e.g. C:\\path\\icon.jpg): ").strip().strip('"')
            if not os.path.exists(path):
                print(f" [!] File not found at: {path}")
                continue
            try:
                with open(path, "rb") as f:
                    data = f.read()
                b64_str = base64.b64encode(data).decode("utf-8").replace("\r", "").replace("\n", "").strip()
                config["icon_b64"] = b64_str
                log_success(f"Successfully converted image '{os.path.basename(path)}' to Base64 ({len(b64_str)} chars)!")
            except Exception as e:
                log_error(f"Failed to convert image file: {e}")

        elif opt == "2":
            path = input("\n Drag & Drop or Enter Base64 Text File Path (.txt): ").strip().strip('"')
            if not os.path.exists(path):
                print(f" [!] File not found at: {path}")
                continue
            try:
                with open(path, "r", encoding="utf-8") as f:
                    b64_str = f.read().replace("\r", "").replace("\n", "").strip()
                config["icon_b64"] = b64_str
                log_success(f"Successfully loaded Base64 string ({len(b64_str)} chars)!")
            except Exception as e:
                log_error(f"Failed to read text file: {e}")

        elif opt == "3":
            raw_b64 = input("\n Paste / Enter Base64 String: ").strip().replace("\r", "").replace("\n", "")
            if raw_b64:
                config["icon_b64"] = raw_b64
                log_success(f"Updated Base64 string ({len(raw_b64)} chars)!")

        elif opt == "4":
            config["icon_b64"] = DEFAULT_VECTOR_ICON_B64
            log_success("Reset floating icon to default vector icon!")


def edit_library_settings(config):
    print("\n --- LIBRARY & TOAST SETTINGS ---")

    lib = input(f" Enter Custom Shared Library Name [{config['lib_name']}]: ").strip()
    if lib:
        # Strip any 'lib' prefix or '.so' suffix if user typed it
        if lib.startswith("lib"):
            lib = lib[3:]
        if lib.endswith(".so"):
            lib = lib[:-3]
        config["lib_name"] = lib

    toast = input(f" Enter Startup Toast Message [{config['toast_msg']}]: ").strip()
    if toast:
        config["toast_msg"] = toast

    title = input(f" Enter Mod Menu Header Title [{config['menu_title']}]: ").strip()
    if title:
        config["menu_title"] = title

    sub = input(f" Enter Marquee Subtitle Text [{config['menu_subtitle']}]: ").strip()
    if sub:
        config["menu_subtitle"] = sub

    log_success("Updated Library & Toast Settings successfully!")


def edit_features_list(config):
    while True:
        print("\n --- FEATURE LIST BUILDER ---")
        for i, feat in enumerate(config["features"]):
            f_type = feat.get("type", "Toggle")
            f_title = feat.get("title", "")
            f_id = feat.get("id", i)
            print(f"  [{i+1}] ID:{f_id} | Type:{f_type:<10} | Title: '{f_title}'")

        print("\n Options: [A]dd Feature, [D]elete Feature, [E]dit Title, [B]ack to Main Menu")
        opt = input(" Select Action: ").strip().upper()

        if opt == "B" or not opt:
            break
        elif opt == "A":
            print("\n Select Feature Type to Add:")
            print("  [1] Category Header")
            print("  [2] Toggle / Switch")
            print("  [3] SeekBar / Slider")
            print("  [4] Button")
            print("  [5] Input Value")
            print("  [6] Spinner")
            ftype_choice = input(" Select Type [1-6]: ").strip()

            title = input(" Enter Feature Title: ").strip()
            if not title:
                print(" [!] Title cannot be empty.")
                continue

            next_id = max([f.get("id", 0) for f in config["features"] if f.get("id", 0) > 0] + [99]) + 1

            if ftype_choice == "1":
                config["features"].append({"id": -next_id, "type": "Category", "title": title})
            elif ftype_choice == "2":
                config["features"].append({"id": next_id, "type": "Toggle", "title": title, "default": False, "offset": "", "hex": ""})
            elif ftype_choice == "3":
                min_val = input(" Enter Minimum Value [1]: ").strip() or "1"
                max_val = input(" Enter Maximum Value [100]: ").strip() or "100"
                config["features"].append({"id": next_id, "type": "SeekBar", "title": title, "min": int(min_val), "max": int(max_val), "default": int(min_val), "offset": ""})
            elif ftype_choice == "4":
                config["features"].append({"id": next_id, "type": "Button", "title": title, "offset": "", "hex": ""})
            elif ftype_choice == "5":
                config["features"].append({"id": next_id, "type": "InputValue", "title": title, "offset": ""})
            elif ftype_choice == "6":
                items = input(" Enter Comma-Separated Options (e.g. Off,Mode 1,Mode 2): ").strip() or "Off,Mode 1"
                config["features"].append({"id": next_id, "type": "Spinner", "title": title, "options": items, "offset": ""})

            log_success(f"Added new feature: '{title}'")

        elif opt == "D":
            idx = input(" Enter Item Number to Delete: ").strip()
            if idx.isdigit() and 1 <= int(idx) <= len(config["features"]):
                removed = config["features"].pop(int(idx) - 1)
                log_success(f"Removed item: '{removed.get('title')}'")
            else:
                print(" [!] Invalid item number.")


def edit_offset_manager(config):
    while True:
        print("\n --- MEMORY OFFSET & HEX PATCH MANAGER ---")
        actionable_features = [f for f in config["features"] if f.get("type") in ("Toggle", "Button", "SeekBar", "InputValue")]

        if not actionable_features:
            print(" [!] No patchable features found in configuration.")
            break

        for i, feat in enumerate(actionable_features):
            f_id = feat.get("id")
            f_title = feat.get("title")
            f_off = feat.get("offset", "")
            f_hex = feat.get("hex", "")
            print(f"  [{i+1}] ID:{f_id} | '{f_title}' | Offset: '{f_off or 'None'}' | Hex Patch: '{f_hex or 'None'}'")

        print("\n Options: [E]dit Offset/Patch, [B]ack")
        opt = input(" Select Action: ").strip().upper()

        if opt == "B" or not opt:
            break
        elif opt == "E":
            idx = input(" Enter Item Number to Edit: ").strip()
            if idx.isdigit() and 1 <= int(idx) <= len(actionable_features):
                target_feat = actionable_features[int(idx) - 1]
                off = input(f" Enter Hex Offset for '{target_feat['title']}' (e.g. 0x1A2841C): ").strip()
                hex_bytes = input(f" Enter Hex Patch Bytes (e.g. C0 03 5F D6 or 00 00 A0 E3): ").strip()
                target_feat["offset"] = off
                target_feat["hex"] = hex_bytes
                log_success(f"Updated memory offset for '{target_feat['title']}'!")


def save_preset(config):
    preset_name = input("\n Enter Preset Name to Save (e.g. egg_fight): ").strip()
    if not preset_name:
        return
    if not preset_name.endswith(".json"):
        preset_name += ".json"

    file_path = os.path.join(PRESETS_DIR, preset_name)
    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(config, f, indent=4)
    log_success(f"Saved configuration preset to: {file_path}")


def load_preset():
    presets = glob.glob(os.path.join(PRESETS_DIR, "*.json"))
    if not presets:
        print(" [!] No saved presets found in Workspace/presets/.")
        return None

    print("\n --- AVAILABLE PRESETS ---")
    for i, p in enumerate(presets):
        print(f"  [{i+1}] {os.path.basename(p)}")

    choice = input("\n Select Preset Number to Load: ").strip()
    if choice.isdigit() and 1 <= int(choice) <= len(presets):
        file_path = presets[int(choice) - 1]
        with open(file_path, "r", encoding="utf-8") as f:
            config = json.load(f)
        log_success(f"Loaded preset from: {file_path}")
        return config
    return None


# ==============================================================================
# C++ CODE GENERATION ENGINE
# ==============================================================================

def generate_cpp_source(config):
    """Generates and writes Menu.cpp, Main.cpp, and Android.mk in LGL_Source"""
    log_step(0, "Generating Custom C++ Source Code & Build Rules")

    jni_dir = os.path.join(LGL_SRC_DIR, "jni")
    os.makedirs(os.path.join(jni_dir, "Menu"), exist_ok=True)

    lib_name = config.get("lib_name", "MyLibName")
    toast_msg = config.get("toast_msg", "Modded by Shiyar_makesmod")
    menu_title = config.get("menu_title", "Modded by Shiyar_makesmod")
    menu_subtitle = config.get("menu_subtitle", "LGL Mod Menu Injector Tool")

    # 1. Update Android.mk with custom library name
    android_mk_path = os.path.join(jni_dir, "Android.mk")
    android_mk_content = f"""LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := {lib_name}

LOCAL_SRC_FILES := Main.cpp \\
                   Menu/Menu.cpp \\
                   Menu/Setup.cpp \\
                   Menu/Jni.cpp \\
                   Includes/Utils.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Includes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Menu

LOCAL_LDLIBS := -L$(LOCAL_PATH)/libs/$(TARGET_ARCH_ABI) -llog -landroid

LOCAL_CPPFLAGS := -std=c++17 -fvisibility=hidden -ffunction-sections -fdata-sections
LOCAL_CPPFLAGS += -Wno-error=format-security -fpack-struct=8

include $(BUILD_SHARED_LIBRARY)
"""
    with open(android_mk_path, "w", encoding="utf-8") as f:
        f.write(android_mk_content)

    # 2. Base64 PNG Icon
    icon_b64 = config.get("icon_b64", DEFAULT_VECTOR_ICON_B64)

    # 3. Update Menu.cpp
    menu_cpp_path = os.path.join(jni_dir, "Menu", "Menu.cpp")
    menu_cpp_content = f"""#include "Includes/obfuscate.h"
#include "Menu/Menu.hpp"

void Init(JNIEnv *env, jobject thiz, jobject ctx, jobject title, jobject subtitle) {{
    setText(env, title, OBFUSCATE("<b>{menu_title}</b>"));
    setText(env, subtitle, OBFUSCATE("<b><marquee><p style=\\"font-size:30\\">"
                                     "<p style=\\"color:green;\\">{menu_title}</p> | "
                                     "{menu_subtitle}</p>"
                                     "</marquee></b>"));
    Toast(env, ctx, OBFUSCATE("{toast_msg}"), ToastLength::LENGTH_LONG);
}}

jstring Icon(JNIEnv *env, jobject thiz) {{
    return env->NewStringUTF("{icon_b64}");
}}

jstring IconWebViewData(JNIEnv *env, jobject thiz) {{
    return nullptr;
}}

jobjectArray SettingsList(JNIEnv *env, jobject activityObject) {{
    jobjectArray ret;

    const char *features[] = {{
            OBFUSCATE("Category_Settings"),
            OBFUSCATE("-1_Toggle_Save feature preferences"),
            OBFUSCATE("-3_Toggle_Auto size vertically"),
            OBFUSCATE("Category_Menu"),
            OBFUSCATE("-6_Button_<font color='red'>Close settings</font>"),
    }};

    int Total_Feature = (sizeof features / sizeof features[0]);
    ret = (jobjectArray)
            env->NewObjectArray(Total_Feature, env->FindClass(OBFUSCATE("java/lang/String")),
                                env->NewStringUTF(""));
    for (int i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));

    return (ret);
}}
"""
    with open(menu_cpp_path, "w", encoding="utf-8") as f:
        f.write(menu_cpp_content)

    # 4. Generate Main.cpp with custom GetFeatureList & Changes
    feature_lines = []
    changes_cases = []

    for feat in config.get("features", []):
        f_type = feat.get("type", "Toggle")
        f_title = feat.get("title", "Feature")
        f_id = feat.get("id", 0)
        f_off = feat.get("offset", "")
        f_hex = feat.get("hex", "")

        if f_type == "Category":
            feature_lines.append(f'            (const char *) OBFUSCATE("Category_{f_title}")')
        elif f_type == "Toggle":
            feature_lines.append(f'            (const char *) OBFUSCATE("{f_id}_Toggle_{f_title}")')
            case_body = f'            LOGI((const char *) OBFUSCATE("{f_title} set to: %d"), boolean);\n'
            if f_off and f_hex:
                case_body += f'            // MemoryPatch::createWithHex((const char *) OBFUSCATE("{f_off}"), (const char *) OBFUSCATE("{f_hex}"));\n'
            case_body += '            break;'
            changes_cases.append(f'        case {f_id}:\n{case_body}')
        elif f_type == "SeekBar":
            f_min = feat.get("min", 1)
            f_max = feat.get("max", 100)
            feature_lines.append(f'            (const char *) OBFUSCATE("{f_id}_SeekBar_{f_title}_{f_min}_{f_max}")')
            changes_cases.append(f'        case {f_id}:\n            LOGI((const char *) OBFUSCATE("{f_title} set to: %d"), value);\n            break;')
        elif f_type == "Button":
            feature_lines.append(f'            (const char *) OBFUSCATE("{f_id}_Button_{f_title}")')
            changes_cases.append(f'        case {f_id}:\n            LOGI((const char *) OBFUSCATE("Button pressed: {f_title}"));\n            break;')
        elif f_type == "InputValue":
            feature_lines.append(f'            (const char *) OBFUSCATE("{f_id}_InputValue_{f_title}")')
            changes_cases.append(f'        case {f_id}:\n            LOGI((const char *) OBFUSCATE("Input value for {f_title}: %d"), value);\n            break;')
        elif f_type == "Spinner":
            f_opts = feat.get("options", "Off,On")
            feature_lines.append(f'            (const char *) OBFUSCATE("{f_id}_Spinner_{f_title}_{f_opts}")')
            changes_cases.append(f'        case {f_id}:\n            LOGI((const char *) OBFUSCATE("Spinner selection for {f_title}: %d"), value);\n            break;')

    feat_array_str = ",\n".join(feature_lines)
    cases_str = "\n".join(changes_cases)

    main_cpp_path = os.path.join(jni_dir, "Main.cpp")
    main_cpp_content = f"""#include <list>
#include <vector>
#include <cstring>
#include <pthread.h>
#include <thread>
#include <string>
#include <jni.h>
#include <unistd.h>
#include <fstream>
#include <iostream>
#include <dlfcn.h>
#include "Includes/Logger.h"
#include "Includes/obfuscate.h"
#include "Includes/Utils.hpp"
#include "Menu/Menu.hpp"
#include "Menu/Jni.hpp"
#include "Includes/Macros.h"

#define targetLibName OBFUSCATE("libil2cpp.so")

jobjectArray GetFeatureList(JNIEnv *env, jobject context) {{
    jobjectArray ret;

    const char *features[] = {{
{feat_array_str}
    }};

    int Total_Feature = (sizeof features / sizeof features[0]);
    ret = (jobjectArray)
            env->NewObjectArray(Total_Feature, env->FindClass(OBFUSCATE("java/lang/String")),
                                env->NewStringUTF(""));

    for (int i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));

    return (ret);
}}

void Changes(JNIEnv *env, jclass clazz, jobject obj, jint featNum, jstring featName, jint value, jlong Lvalue, jboolean boolean, jstring text) {{
    switch (featNum) {{
{cases_str}
        default:
            break;
    }}
}}

void hack_thread() {{
    while (!isLibraryLoaded(targetLibName)) {{
        sleep(1);
    }}
    LOGI((const char *) OBFUSCATE("Game library loaded successfully, initializing native bindings..."));
}}

__attribute__((constructor))
void lib_main() {{
    std::thread(hack_thread).detach();
}}
"""
    with open(main_cpp_path, "w", encoding="utf-8") as f:
        f.write(main_cpp_content)

    # 5. Update Main.smali in LGL_Source with custom library name
    import re
    lgl_main_smali = os.path.join(LGL_SRC_DIR, "smali", "com", "android", "support", "Main.smali")
    if os.path.exists(lgl_main_smali):
        with open(lgl_main_smali, "r", encoding="utf-8") as f:
            smali_data = f.read()
        smali_data = re.sub(r'const-string v\d+, "[^"]+"', f'const-string v0, "{lib_name}"', smali_data)
        with open(lgl_main_smali, "w", encoding="utf-8") as f:
            f.write(smali_data)

            log_success("Generated Menu.cpp, Main.cpp, Android.mk, and Main.smali cleanly!")

    # 6. Update Main.java in LGL_Source with custom lib_name (`System.loadLibrary`)
    main_java_path = os.path.join(LGL_SRC_DIR, "java", "com", "android", "support", "Main.java")
    if os.path.exists(main_java_path):
        with open(main_java_path, "r", encoding="utf-8") as f:
            java_content = f.read()
        java_content = re.sub(r'System\.loadLibrary\("[^"]+"\)', f'System.loadLibrary("{lib_name}")', java_content)
        with open(main_java_path, "w", encoding="utf-8") as f:
            f.write(java_content)
        log_success(f"Patched Main.java with System.loadLibrary(\"{lib_name}\")!")

    log_success("Generated Menu.cpp, Main.cpp, Android.mk, Main.smali, and Main.java cleanly!")


# ==============================================================================
# PIPELINE STAGES
# ==============================================================================

def compile_lgl_native(lib_name):
    """Step 1: Compile LGL Mod Menu C++ Shared Library via NDK"""
    log_step(1, f"Compiling LGL Native Library ('lib{lib_name}.so') via Android NDK")
    
    global NDK_BUILD
    if not NDK_BUILD or not os.path.exists(NDK_BUILD):
        for p in NDK_BUILD_PATHS:
            if os.path.exists(p):
                NDK_BUILD = p
                break

    if NDK_BUILD and os.path.exists(NDK_BUILD):
        log_info(f"Using NDK Build Path: {NDK_BUILD}")
    else:
        while not NDK_BUILD or not os.path.exists(NDK_BUILD):
            log_warning("ndk-build.cmd not found in standard paths.")
            user_ndk = input(" Please enter the full path to your 'ndk-build.cmd' file: ").strip().strip('"')
            if os.path.exists(user_ndk):
                NDK_BUILD = user_ndk
            else:
                log_error(f"Invalid path: '{user_ndk}'. Please make sure it points directly to 'ndk-build.cmd'.")

    jni_dir = os.path.join(LGL_SRC_DIR, "jni")
    assert os.path.exists(jni_dir), f"JNI Directory not found at: {jni_dir}"

    cmd = f'"{NDK_BUILD}" NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Application.mk'
    run_cmd(cmd, cwd=jni_dir)

    # Verify compiled .so files
    arm64_so = os.path.join(jni_dir, "libs", "arm64-v8a", f"lib{lib_name}.so")
    armv7_so = os.path.join(jni_dir, "libs", "armeabi-v7a", f"lib{lib_name}.so")

    assert os.path.exists(arm64_so), f"arm64-v8a .so missing: {arm64_so}"
    assert os.path.exists(armv7_so), f"armeabi-v7a .so missing: {armv7_so}"

    log_success(f"Compiled arm64-v8a and armeabi-v7a 'lib{lib_name}.so' native libraries successfully!")
    return arm64_so, armv7_so


def decompile_apk(apk_path, decompiled_dir):
    """Step 2: Decompile Target APK via Apktool"""
    log_step(2, "Decompiling Target APK via Apktool")
    
    assert os.path.exists(apk_path), f"Target APK not found: {apk_path}"
    assert os.path.exists(APKTOOL_JAR), f"Apktool jar not found: {APKTOOL_JAR}"

    cmd = f'java -jar "{APKTOOL_JAR}" d "{apk_path}" -o "{decompiled_dir}" -f'
    run_cmd(cmd)

    assert os.path.exists(os.path.join(decompiled_dir, "AndroidManifest.xml")), "Decompilation failed: AndroidManifest.xml missing"
    log_success(f"Decompiled target APK into: {decompiled_dir}")


def inject_smali_classes(decompiled_dir, lib_name="MyLibName"):
    """Step 3: Inject LGL Smali Classes (com/android/support) into all smali directories"""
    log_step(3, "Injecting LGL Smali Classes (com/android/support)")

    import re

    # 1. Look for smali source inside LGL_Source
    lgl_smali_src = os.path.join(LGL_SRC_DIR, "smali", "com", "android", "support")

    # 2. Fallback check if smali directory isn't found
    if not os.path.exists(lgl_smali_src):
        lgl_smali_src = r"C:\Users\roshg\Downloads\SBA_v13.0.4_decompiled\smali_classes4\com\android\support"

    assert os.path.exists(lgl_smali_src), f"LGL Smali source not found at: {lgl_smali_src}"

    # Inject smali files into smali AND all smali_classesN directories
    smali_dirs = [d for d in os.listdir(decompiled_dir) if d.startswith("smali")]
    if "smali" not in smali_dirs:
        smali_dirs.append("smali")

    for s_dir in smali_dirs:
        target_smali_dir = os.path.join(decompiled_dir, s_dir, "com", "android", "support")
        os.makedirs(target_smali_dir, exist_ok=True)

        for item in os.listdir(lgl_smali_src):
            s_file = os.path.join(lgl_smali_src, item)
            d_file = os.path.join(target_smali_dir, item)
            if os.path.isfile(s_file) and s_file.endswith(".smali"):
                shutil.copy(s_file, d_file)
            elif os.path.isdir(s_file):
                shutil.copytree(s_file, d_file, dirs_exist_ok=True)

        # Automatically patch Main.smali access modifier & custom lib_name
        main_smali = os.path.join(target_smali_dir, "Main.smali")
        if os.path.exists(main_smali):
            with open(main_smali, "r", encoding="utf-8") as f:
                smali_content = f.read()
            smali_content = smali_content.replace(
                ".method private static native CheckOverlayPermission",
                ".method public static native CheckOverlayPermission"
            )
            smali_content = re.sub(
                r'const-string v\d+, "[^"]+"',
                f'const-string v0, "{lib_name}"',
                smali_content
            )
            with open(main_smali, "w", encoding="utf-8") as f:
                f.write(smali_content)

    log_success("Injected com.android.support smali classes and patched access modifiers in all smali directories!")


def patch_manifest(decompiled_dir):
    """Step 4: Patch AndroidManifest.xml for Overlay Permission and Launcher Service"""
    log_step(4, "Patching AndroidManifest.xml for Overlay Permission & Launcher Service")

    manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
    assert os.path.exists(manifest_path), f"Manifest not found: {manifest_path}"

    with open(manifest_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Clean up unsupported attributes if present
    content = content.replace('android:enableOnBackInvokedCallback="true"', '')
    content = content.replace('android:enableOnBackInvokedCallback="false"', '')

    # 1. Inject Overlay Permission
    perm_tag = '<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>'
    if perm_tag not in content:
        content = content.replace("<application", f"{perm_tag}\n    <application")
        log_success("Added SYSTEM_ALERT_WINDOW overlay permission!")
    else:
        log_info("SYSTEM_ALERT_WINDOW permission already present.")

    # 2. Inject Launcher Service (Required to draw the Mod Menu floating window!)
    service_tag = '<service android:name="com.android.support.Launcher" android:enabled="true" android:exported="false"/>'
    if "com.android.support.Launcher" not in content:
        content = content.replace("</application>", f"    {service_tag}\n    </application>")
        log_success("Added com.android.support.Launcher floating window service tag!")
    else:
        log_info("com.android.support.Launcher service already present.")

    with open(manifest_path, "w", encoding="utf-8") as f:
        f.write(content)

    # 3. Clean up unsupported clipToOutline attributes in res/layout XMLs to prevent aapt2 errors
    layout_dir = os.path.join(decompiled_dir, "res", "layout")
    if os.path.exists(layout_dir):
        for xml_file in glob.glob(os.path.join(layout_dir, "*.xml")):
            try:
                with open(xml_file, "r", encoding="utf-8") as f:
                    xml_data = f.read()
                if "clipToOutline" in xml_data:
                    xml_data = xml_data.replace('android:clipToOutline="true"', '').replace('android:clipToOutline="false"', '')
                    with open(xml_file, "w", encoding="utf-8") as f:
                        f.write(xml_data)
            except Exception:
                pass


def inject_activity_hook(decompiled_dir, lib_name):
    """Step 5: Inject Mod Menu Startup Hook into Launcher Activity"""
    log_step(5, "Injecting Mod Menu Startup Hook into Primary Launcher Activity")

    possible_activities = [
        os.path.join("com", "unity3d", "player", "UnityPlayerActivity.smali"),
        os.path.join("com", "unity3d", "player", "UnityPlayerGameActivity.smali"),
        os.path.join("com", "epicgames", "ue4", "GameActivity.smali"),
        os.path.join("com", "mojang", "minecraftpe", "MainActivity.smali")
    ]

    target_paths = []
    smali_dirs = glob.glob(os.path.join(decompiled_dir, "smali*"))
    for s_dir in smali_dirs:
        for act in possible_activities:
            full_path = os.path.join(s_dir, act)
            if os.path.exists(full_path):
                target_paths.append(full_path)

    assert len(target_paths) > 0, "Could not locate primary launcher Activity smali file!"

    hook_code = (
        f'    const-string v0, "{lib_name}"\n'
        f'    invoke-static {{v0}}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V\n'
        f'    invoke-static {{p0}}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V\n'
    )

    for target_smali_path in target_paths:
        log_info(f"Targeting launcher Activity smali: {target_smali_path}")
        with open(target_smali_path, "r", encoding="utf-8") as f:
            lines = f.readlines()

        new_lines = []
        injected = False
        i = 0
        while i < len(lines):
            line = lines[i]
            if ("System;->loadLibrary" in line or "CheckOverlayPermission" in line or "Main;->Start" in line) and not injected:
                if new_lines and "const-string" in new_lines[-1]:
                    new_lines.pop()
                new_lines.append(hook_code)
                injected = True
                while i < len(lines) and ("System;->loadLibrary" in lines[i] or "CheckOverlayPermission" in lines[i] or "Main;->Start" in lines[i]):
                    i += 1
                continue
            elif ".method" in line and "onCreate(" in line and not injected:
                new_lines.append(line)
                i += 1
                while i < len(lines) and not (".locals" in lines[i] or ".registers" in lines[i]):
                    new_lines.append(lines[i])
                    i += 1
                if i < len(lines):
                    new_lines.append(lines[i])
                    new_lines.append(hook_code)
                    injected = True
                    i += 1
                continue
            else:
                new_lines.append(line)
                i += 1

        with open(target_smali_path, "w", encoding="utf-8") as f:
            f.writelines(new_lines)

    log_success(f"Injected System.loadLibrary('{lib_name}') and CheckOverlayPermission into onCreate across all launcher activities!")


def inject_native_so(decompiled_dir, arm64_so, armv7_so, lib_name):
    """Step 6: Inject Compiled Native .so Libraries into Game's lib/ Directory"""
    log_step(6, "Injecting Architecture-Specific Native Libraries (.so)")

    lib_dir = os.path.join(decompiled_dir, "lib")
    os.makedirs(lib_dir, exist_ok=True)

    target_arm64_dir = os.path.join(lib_dir, "arm64-v8a")
    target_armv7_dir = os.path.join(lib_dir, "armeabi-v7a")

    os.makedirs(target_arm64_dir, exist_ok=True)
    os.makedirs(target_armv7_dir, exist_ok=True)

    shutil.copy(arm64_so, os.path.join(target_arm64_dir, f"lib{lib_name}.so"))
    shutil.copy(armv7_so, os.path.join(target_armv7_dir, f"lib{lib_name}.so"))

    log_success(f"Copied lib{lib_name}.so into lib/arm64-v8a and lib/armeabi-v7a!")


def rebuild_and_sign(decompiled_dir, output_apk_name):
    """Step 7: Rebuild, ZipAlign, and Sign the Modded APK"""
    log_step(7, "Rebuilding, ZipAligning, and Signing Final APK")

    unsigned_apk = os.path.join(WORKSPACE, "unsigned_mod.apk")
    aligned_apk = os.path.join(WORKSPACE, "aligned_mod.apk")
    final_signed_apk = os.path.join(WORKSPACE, output_apk_name)

    # 1. Rebuild with Apktool
    log_info("Building APK via Apktool...")
    run_cmd(f'java -jar "{APKTOOL_JAR}" b "{decompiled_dir}" -o "{unsigned_apk}"')
    assert os.path.exists(unsigned_apk), "Apktool rebuild failed!"

    # 2. ZipAlign with Android SDK zipalign
    global ZIPALIGN
    if ZIPALIGN and os.path.exists(ZIPALIGN):
        log_info("Page-aligning APK via zipalign...")
        run_cmd(f'"{ZIPALIGN}" -f -p 4 "{unsigned_apk}" "{aligned_apk}"')
        apk_to_sign = aligned_apk
    else:
        log_warning("zipalign.exe not found, skipping manual zipalign...")
        apk_to_sign = unsigned_apk

    # 3. Sign with Uber APK Signer
    log_info("Signing APK via Uber APK Signer...")
    run_cmd(f'java -jar "{SIGNER_JAR}" -a "{apk_to_sign}" -o "{WORKSPACE}" --skipZipAlign')

    # Locate output signed APK (case-insensitive search)
    all_apks = glob.glob(os.path.join(WORKSPACE, "*.apk"))
    signed_candidates = [
        f for f in all_apks
        if ("signed" in os.path.basename(f).lower()) and (f != final_signed_apk)
    ]

    if not signed_candidates:
        signed_candidates = [
            f for f in all_apks
            if f not in (unsigned_apk, aligned_apk, final_signed_apk)
        ]

    assert len(signed_candidates) > 0, f"Signing failed: No signed APK produced in {WORKSPACE}!"

    shutil.move(signed_candidates[0], final_signed_apk)
    log_success(f"Final Signed Modded APK generated at: {final_signed_apk}")
    return final_signed_apk


def run_pipeline(target_apk, config, status_callback=None):
    """Executes the full 7-step mod menu generation & injection pipeline with progress callbacks"""
    def report(percent, msg):
        log_info(f"[{percent}%] {msg}")
        if status_callback:
            try:
                status_callback(percent, msg)
            except Exception:
                pass

    report(0, "Generating Custom C++ Source Code & Build Rules...")
    generate_cpp_source(config)

    lib_name = config.get("lib_name", "MyLibName")

    report(15, f"Compiling C++ Native Library ('lib{lib_name}.so')...")
    arm64_so, armv7_so = compile_lgl_native(lib_name)

    game_name = os.path.splitext(os.path.basename(target_apk))[0]
    decompiled_dir = os.path.join(WORKSPACE, "decompiled_game")
    output_apk_name = f"Modded_{game_name}.apk"

    report(30, "Decompiling Target Game APK...")
    decompile_apk(target_apk, decompiled_dir)

    report(45, "Injecting Smali Classes (com.android.support)...")
    inject_smali_classes(decompiled_dir, lib_name)

    report(60, "Patching AndroidManifest.xml & Layout XMLs...")
    patch_manifest(decompiled_dir)

    report(75, "Injecting Startup Hook into Launcher Activity...")
    inject_activity_hook(decompiled_dir, lib_name)

    report(85, "Injecting Native Shared Libraries (.so)...")
    inject_native_so(decompiled_dir, arm64_so, armv7_so, lib_name)

    report(92, "Rebuilding, ZipAligning, and Signing Modded APK...")
    final_apk = rebuild_and_sign(decompiled_dir, output_apk_name)

    report(100, f"SUCCESS! Final Modded APK generated at: {final_apk}")
    return final_apk


# ==============================================================================
# MAIN AUTOMATION ENTRY POINT
# ==============================================================================

def main():
    setup_logger()
    print("\n" + "=" * 60)
    print("      AUTOMATED LGL MOD MENU INJECTOR TOOL (SHIYAR)     ")
    print("=" * 60)

    os.makedirs(WORKSPACE, exist_ok=True)

    # 1. Launch Interactive Mod Menu Configurator / Editor
    config = interactive_configurator()

    # 2. Prompt for Target APK
    print("\n------------------------------------------------------------")
    target_apk = input("Drag & Drop your target game APK here and press ENTER: ").strip().strip('"')
    print("------------------------------------------------------------\n")

    assert os.path.exists(target_apk), f"Target APK not found at: {target_apk}"

    # 3. Run Pipeline
    final_apk = run_pipeline(target_apk, config)

    print("\n" + "=" * 60)
    print(" [X] ALL STEPS COMPLETED SUCCESSFULLY!")
    print(f" [X] Final Modded APK: {final_apk}")
    print("=" * 60 + "\n")


if __name__ == "__main__":
    main()

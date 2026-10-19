# 🚀 LGL Mod Menu Injector Tool (Shiyar)

[![GitHub release](https://img.shields.io/github/v/release/engi26718-sketch/Tool-injector-Mod-Menu?color=green&style=flat-square)](https://github.com/engi26718-sketch/Tool-injector-Mod-Menu/releases)
[![Downloads](https://img.shields.io/github/downloads/engi26718-sketch/Tool-injector-Mod-Menu/total?color=blue&style=flat-square)](https://github.com/engi26718-sketch/Tool-injector-Mod-Menu/releases)
[![Python Version](https://img.shields.io/badge/Python-3.8%2B-yellow?style=flat-square&logo=python)](https://python.org)
[![Android NDK](https://img.shields.io/badge/Android-NDK%20r21%2B-green?style=flat-square&logo=android)](https://developer.android.com/ndk)
[![License](https://img.shields.io/badge/License-GPL--3.0-orange?style=flat-square)](https://github.com/engi26718-sketch/Tool-injector-Mod-Menu)

An automated, cross-platform Android Mod Menu injector tool written in Python. It provides an **Interactive Mod Menu Configurator & Editor** to build features, manage memory offsets, customize floating icon graphics, generate C++ native code, run NDK compilation, and seamlessly inject floating Mod Menu overlays into any target Android game APK.

---

## ✨ Features

- ⚙️ **Interactive Configurator / Editor CLI:**
  - **Library & Toast Settings:** Customize `.so` shared library name, launch Toast messages, menu header title, and marquee scrolling subtitle.
  - **Feature List Builder:** Add, edit, or delete Category Headers, Toggles, Sliders (SeekBars), Buttons, Input Values, and Spinners.
  - **Offset & Hex Patch Manager:** Assign memory offsets and hex patches (ARM64 & ARMv7) directly to feature IDs.
  - **Floating Icon / Image Base64 Editor:** Drag & drop any image file (`.png`, `.jpg`, `.jpeg`, `.webp`) to convert it into a Base64 string automatically, or paste Base64 text.
  - **Preset Engine:** Save and load full configurations as JSON presets (`Workspace/presets/`).

- 🛠️ **Automated C++ Code Generator:**
  - Dynamically formats and writes `Main.cpp`, `Menu.cpp`, `Main.smali`, and `Android.mk` inside `LGL_Source/` before running NDK compilation.

- 🔍 **Universal Path Auto-Discovery:**
  - Automatically locates `ndk-build` and `zipalign` across system `PATH`, environment variables (`%ANDROID_HOME%`, `%NDK_HOME%`), and user SDK directories (`C:\Users\<username>\AppData\Local\Android\Sdk\`) without hardcoded user paths.

- 💉 **Automated 7-Stage APK Injection Pipeline:**
  1. **NDK C++ Compilation:** Builds native `.so` shared libraries (`arm64-v8a` and `armeabi-v7a`).
  2. **APK Decompilation:** Decompiles target APK via `apktool`.
  3. **Multi-Dex Smali Injection:** Copies `com/android/support/*` classes into all smali folders (`smali/`, `smali_classes2/`...).
  4. **Manifest Service Patching:** Automatically injects `SYSTEM_ALERT_WINDOW` permission and `<service android:name="com.android.support.Launcher"/>` into `AndroidManifest.xml`.
  5. **Launcher Activity Hooking:** Injects `System.loadLibrary()` and `Main.Start(Context)` into the primary game Activity's `onCreate`.
  6. **Native `.so` Injection:** Injects architecture-specific `.so` files into `lib/arm64-v8a/` and `lib/armeabi-v7a/`.
  7. **Rebuild, Page-Align & Sign:** Rebuilds with `apktool`, page-aligns `.dex`/`.so` files with `zipalign -f -p 4`, and signs with `uber-apk-signer`.

- 📜 **Automated File Logging:**
  - Every timestamped step, command run, stdout/stderr, and error stacktrace is logged to `Logs/log.txt`.

---

## 📋 Requirements & Setup

Before running the tool, make sure you have the following installed:

1. **Python 3.8+** (Added to system PATH).
2. **Java JDK 8 or higher** (Required for `apktool` and `uber-apk-signer`).
3. **Android NDK** (r21+ recommended, contains `ndk-build`).
4. **Android SDK Build-Tools** (Contains `zipalign.exe`).

---

## 🚀 Quick Start

1. Open PowerShell or Terminal in the `ToolInjector` directory:
   ```cmd
   cd C:\path\to\ToolInjector
   ```

2. Run the tool script:
   ```cmd
   py mod_tool.py
   ```

3. Follow the interactive configuration menu:
   ```
   --- CONFIGURATION MENU ---
   [1] Library & Toast Settings (Lib Name: 'ShiyarMod')
   [2] Feature List Builder (4 items configured)
   [3] Memory Offset & Hex Patch Manager
   [4] Load Preset from File
   [5] Save Preset to File
   [7] Floating Icon / Image Base64 Editor
   [6] Proceed with Current Configuration & Inject ->
   ```

4. Drag & drop your target game APK when prompted and press **ENTER**.

5. Find your signed, ready-to-play modded APK in `Workspace/Modded_<game_name>.apk`!

---

## 📂 Project Structure

```
ToolInjector/
├── mod_tool.py              # Main Python Injector & Configurator CLI
├── README.md                # Project documentation
├── Tools/                   # Binaries (apktool.jar, uber-apk-signer.jar)
├── Workspace/               # Output directory (decompiled files, signed APKs)
│   └── presets/             # Saved JSON configuration presets
├── Logs/                    # Automated execution logs (log.txt)
└── LGL_Source/              # LGL Mod Menu C++ & Smali source template
    └── Android-Mod-Menu/...
```

---

## 🐛 Troubleshooting & Logs

If an error occurs during decompilation, NDK compilation, or signing:
- Open the automated log file at `Logs/log.txt`.
- The log file captures all timestamped command outputs, stdout/stderr messages, and error traces.

---

## 📄 License & Credits

* Based on the **LGL Mod Menu Framework** by [LGLTeam](https://github.com/LGLTeam).
* Modified and automated by **Shiyar_makesmod**.

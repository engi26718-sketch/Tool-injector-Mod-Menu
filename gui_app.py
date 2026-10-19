import os
import sys
import json
import base64
import glob
import shutil
import threading
import io
import tkinter as tk
from tkinter import filedialog, messagebox
import customtkinter as ctk
from PIL import Image, ImageTk, ImageDraw

# Add current directory to Python path
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(BASE_DIR)

import mod_tool

# Initialize CustomTkinter Theme
ctk.set_appearance_mode("Dark")
ctk.set_default_color_theme("blue")


class ToolInjectorGUI(ctk.CTk):
    def __init__(self):
        super().__init__()

        self.title("ToolInjector v2.0.0 - LGL Mod Menu Injector (Shiyar)")
        self.geometry("1080x720")
        self.minsize(980, 640)

        # Initialize Default Config
        self.config_data = json.loads(json.dumps(mod_tool.DEFAULT_CONFIG))
        self.target_apk_path = ""
        self.preview_photo = None

        self._build_header()
        self._build_tabs()
        self._load_config_into_gui()

    def _build_header(self):
        header = ctk.CTkFrame(self, fg_color="#1e1e1e", corner_radius=0, height=60)
        header.pack(fill="x", side="top")

        title_lbl = ctk.CTkLabel(
            header,
            text="🚀 TOOLINJECTOR v2.0.0",
            font=ctk.CTkFont(size=22, weight="bold"),
            text_color="#00aaff"
        )
        title_lbl.pack(side="left", padx=20, pady=12)

        subtitle_lbl = ctk.CTkLabel(
            header,
            text="Automated LGL Mod Menu Configurator, Base64 Image Editor & APK Injector",
            font=ctk.CTkFont(size=12),
            text_color="#aaaaaa"
        )
        subtitle_lbl.pack(side="left", padx=10, pady=15)

        ver_badge = ctk.CTkLabel(
            header,
            text="v2.0.0 RELEASE",
            fg_color="#007acc",
            corner_radius=6,
            font=ctk.CTkFont(size=11, weight="bold"),
            text_color="white",
            padx=10,
            pady=4
        )
        ver_badge.pack(side="right", padx=20, pady=15)

    def _build_tabs(self):
        self.tabview = ctk.CTkTabview(self, corner_radius=10)
        self.tabview.pack(fill="both", expand=True, padx=15, pady=10)

        self.tab_config = self.tabview.add("⚙️ Configurator & Icon Editor")
        self.tab_builder = self.tabview.add("🛠️ Feature List Builder & Offsets")
        self.tab_inject = self.tabview.add("💉 APK Injection & Terminal")

        self._build_tab_config()
        self._build_tab_builder()
        self._build_tab_inject()

    # ==========================================================================
    # TAB 1: CONFIGURATOR & ICON IMAGE EDITOR
    # ==========================================================================
    def _build_tab_config(self):
        grid_frame = ctk.CTkFrame(self.tab_config, fg_color="transparent")
        grid_frame.pack(fill="both", expand=True, padx=10, pady=10)

        # Left Column: Library & Toast Settings Card
        left_card = ctk.CTkFrame(grid_frame, fg_color="#262626", corner_radius=10)
        left_card.pack(side="left", fill="both", expand=True, padx=(0, 10), pady=5)

        card1_title = ctk.CTkLabel(
            left_card,
            text="Library & Toast Settings",
            font=ctk.CTkFont(size=16, weight="bold"),
            text_color="#00aaff"
        )
        card1_title.pack(anchor="w", padx=15, pady=(15, 10))

        # Lib Name Entry
        ctk.CTkLabel(left_card, text="Shared Library Name (.so):", font=ctk.CTkFont(size=12)).pack(anchor="w", padx=15, pady=(5, 0))
        self.entry_lib_name = ctk.CTkEntry(left_card, placeholder_text="e.g. Shiyarmod")
        self.entry_lib_name.pack(fill="x", padx=15, pady=(2, 10))

        # Toast Msg Entry
        ctk.CTkLabel(left_card, text="Startup Toast Message:", font=ctk.CTkFont(size=12)).pack(anchor="w", padx=15, pady=(5, 0))
        self.entry_toast_msg = ctk.CTkEntry(left_card, placeholder_text="e.g. Modded by Shiyar_makesmod")
        self.entry_toast_msg.pack(fill="x", padx=15, pady=(2, 10))

        # Menu Header Title
        ctk.CTkLabel(left_card, text="Mod Menu Header Title:", font=ctk.CTkFont(size=12)).pack(anchor="w", padx=15, pady=(5, 0))
        self.entry_menu_title = ctk.CTkEntry(left_card, placeholder_text="e.g. Shiyar Mod Menu")
        self.entry_menu_title.pack(fill="x", padx=15, pady=(2, 10))

        # Subtitle Marquee
        ctk.CTkLabel(left_card, text="Marquee Subtitle Text:", font=ctk.CTkFont(size=12)).pack(anchor="w", padx=15, pady=(5, 0))
        self.entry_menu_subtitle = ctk.CTkEntry(left_card, placeholder_text="e.g. LGL Mod Menu Injector Tool")
        self.entry_menu_subtitle.pack(fill="x", padx=15, pady=(2, 15))

        btn_save_config = ctk.CTkButton(
            left_card,
            text="Apply Settings Changes",
            fg_color="#007acc",
            hover_color="#005999",
            command=self._apply_config_from_entries
        )
        btn_save_config.pack(padx=15, pady=10, fill="x")

        # Right Column: Floating Icon Image Editor Card & Live Preview
        right_card = ctk.CTkFrame(grid_frame, fg_color="#262626", corner_radius=10)
        right_card.pack(side="right", fill="both", expand=True, padx=(10, 0), pady=5)

        card2_title = ctk.CTkLabel(
            right_card,
            text="Floating Icon / Base64 Image Editor",
            font=ctk.CTkFont(size=16, weight="bold"),
            text_color="#00aaff"
        )
        card2_title.pack(anchor="w", padx=15, pady=(15, 10))

        # Live Image Preview Frame
        preview_frame = ctk.CTkFrame(right_card, fg_color="#1a1a1a", width=120, height=120, corner_radius=10)
        preview_frame.pack(pady=10)
        preview_frame.pack_propagate(False)

        self.lbl_image_preview = ctk.CTkLabel(preview_frame, text="[No Preview]")
        self.lbl_image_preview.pack(fill="both", expand=True, padx=5, pady=5)

        self.lbl_b64_info = ctk.CTkLabel(right_card, text="Icon Base64: Default Vector Icon", font=ctk.CTkFont(size=11), text_color="#aaaaaa")
        self.lbl_b64_info.pack(pady=5)

        btn_browse_img = ctk.CTkButton(
            right_card,
            text="🖼️ Select Image File (PNG, JPG, WEBP)...",
            fg_color="#28a745",
            hover_color="#1e7e34",
            command=self._browse_icon_image
        )
        btn_browse_img.pack(padx=15, pady=6, fill="x")

        btn_load_b64_file = ctk.CTkButton(
            right_card,
            text="📄 Load Base64 Text File (.txt)...",
            fg_color="#3a3a3a",
            hover_color="#4a4a4a",
            command=self._load_b64_file
        )
        btn_load_b64_file.pack(padx=15, pady=6, fill="x")

        btn_reset_icon = ctk.CTkButton(
            right_card,
            text="🔄 Reset to Default Vector Icon",
            fg_color="#d9534f",
            hover_color="#c9302c",
            command=self._reset_icon_to_default
        )
        btn_reset_icon.pack(padx=15, pady=6, fill="x")

    def _browse_icon_image(self):
        file_path = filedialog.askopenfilename(
            title="Select Floating Icon Image",
            filetypes=[("Image Files", "*.png;*.jpg;*.jpeg;*.webp")]
        )
        if file_path:
            try:
                with open(file_path, "rb") as f:
                    data = f.read()
                b64_str = base64.b64encode(data).decode("utf-8").replace("\r", "").replace("\n", "").strip()
                self.config_data["icon_b64"] = b64_str
                self._update_image_preview_from_b64(b64_str)
                messagebox.showinfo("Success", f"Successfully loaded and converted '{os.path.basename(file_path)}' to Base64!")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to load image: {e}")

    def _load_b64_file(self):
        file_path = filedialog.askopenfilename(
            title="Select Base64 Text File",
            filetypes=[("Text Files", "*.txt")]
        )
        if file_path:
            try:
                with open(file_path, "r", encoding="utf-8") as f:
                    b64_str = f.read().replace("\r", "").replace("\n", "").strip()
                self.config_data["icon_b64"] = b64_str
                self._update_image_preview_from_b64(b64_str)
                messagebox.showinfo("Success", "Loaded Base64 string from text file successfully!")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to read text file: {e}")

    def _reset_icon_to_default(self):
        self.config_data["icon_b64"] = mod_tool.DEFAULT_VECTOR_ICON_B64
        self._update_image_preview_from_b64(mod_tool.DEFAULT_VECTOR_ICON_B64)
        messagebox.showinfo("Reset", "Floating icon reset to default vector icon!")

    def _update_image_preview_from_b64(self, b64_str):
        try:
            img_data = base64.b64decode(b64_str)
            img = Image.open(io.BytesIO(img_data)).convert("RGBA")
            img = img.resize((100, 100), Image.Resampling.LANCZOS)

            # Create circular mask preview
            mask = Image.new('L', (100, 100), 0)
            draw = ImageDraw.Draw(mask)
            draw.ellipse((0, 0, 100, 100), fill=255)

            circular_img = Image.new('RGBA', (100, 100), (0, 0, 0, 0))
            circular_img.paste(img, (0, 0), mask)

            ctk_img = ctk.CTkImage(light_image=circular_img, dark_image=circular_img, size=(90, 90))
            self.lbl_image_preview.configure(image=ctk_img, text="")
            self.lbl_b64_info.configure(text=f"Icon Base64: Custom Image ({len(b64_str)} chars)")
        except Exception:
            self.lbl_image_preview.configure(image=None, text="[Custom B64]")
            self.lbl_b64_info.configure(text=f"Icon Base64: String ({len(b64_str)} chars)")

    def _apply_config_from_entries(self):
        self.config_data["lib_name"] = self.entry_lib_name.get().strip() or "MyLibName"
        self.config_data["toast_msg"] = self.entry_toast_msg.get().strip() or "Modded by Shiyar_makesmod"
        self.config_data["menu_title"] = self.entry_menu_title.get().strip() or "Modded by Shiyar_makesmod"
        self.config_data["menu_subtitle"] = self.entry_menu_subtitle.get().strip() or "LGL Mod Menu Injector Tool"
        messagebox.showinfo("Applied", "Settings applied successfully!")

    # ==========================================================================
    # TAB 2: VISUAL FEATURE BUILDER & OFFSET MANAGER
    # ==========================================================================
    def _build_tab_builder(self):
        top_bar = ctk.CTkFrame(self.tab_builder, fg_color="transparent")
        top_bar.pack(fill="x", padx=10, pady=5)

        btn_add_feat = ctk.CTkButton(
            top_bar,
            text="➕ Add New Feature...",
            fg_color="#00aaff",
            hover_color="#0088cc",
            command=self._dialog_add_feature
        )
        btn_add_feat.pack(side="left", padx=5)

        btn_save_preset = ctk.CTkButton(
            top_bar,
            text="💾 Save Preset JSON...",
            fg_color="#3a3a3a",
            hover_color="#4a4a4a",
            command=self._save_preset_gui
        )
        btn_save_preset.pack(side="right", padx=5)

        btn_load_preset = ctk.CTkButton(
            top_bar,
            text="📂 Load Preset JSON...",
            fg_color="#3a3a3a",
            hover_color="#4a4a4a",
            command=self._load_preset_gui
        )
        btn_load_preset.pack(side="right", padx=5)

        # Scrollable Feature List Table
        self.scroll_features = ctk.CTkScrollableFrame(self.tab_builder, fg_color="#262626", corner_radius=10)
        self.scroll_features.pack(fill="both", expand=True, padx=10, pady=10)

    def _render_features_table(self):
        for widget in self.scroll_features.winfo_children():
            widget.destroy()

        headers = ["ID", "Type", "Title / Name", "Memory Offset", "Hex Patch", "Action"]
        widths = [60, 110, 260, 130, 160, 80]

        hdr_frame = ctk.CTkFrame(self.scroll_features, fg_color="#1a1a1a", height=30)
        hdr_frame.pack(fill="x", pady=(0, 5))

        for col, h in enumerate(headers):
            lbl = ctk.CTkLabel(
                hdr_frame,
                text=h,
                font=ctk.CTkFont(size=12, weight="bold"),
                width=widths[col],
                anchor="w"
            )
            lbl.pack(side="left", padx=5, pady=4)

        for i, feat in enumerate(self.config_data.get("features", [])):
            row = ctk.CTkFrame(self.scroll_features, fg_color="#2f2f2f" if i % 2 == 0 else "#262626")
            row.pack(fill="x", pady=2)

            f_id = feat.get("id", i)
            f_type = feat.get("type", "Toggle")
            f_title = feat.get("title", "")
            f_off = feat.get("offset", "")
            f_hex = feat.get("hex", "")

            ctk.CTkLabel(row, text=str(f_id), width=widths[0], anchor="w").pack(side="left", padx=5)
            ctk.CTkLabel(row, text=f_type, width=widths[1], anchor="w", text_color="#00aaff").pack(side="left", padx=5)

            entry_title = ctk.CTkEntry(row, width=widths[2]-10)
            entry_title.insert(0, f_title)
            entry_title.pack(side="left", padx=5)

            entry_off = ctk.CTkEntry(row, width=widths[3]-10, placeholder_text="0x1A2841C")
            entry_off.insert(0, f_off)
            entry_off.pack(side="left", padx=5)

            entry_hex = ctk.CTkEntry(row, width=widths[4]-10, placeholder_text="C0 03 5F D6")
            entry_hex.insert(0, f_hex)
            entry_hex.pack(side="left", padx=5)

            # Save inline updates on entry key release
            def make_updater(f_dict, e_t, e_o, e_h):
                return lambda e: f_dict.update({"title": e_t.get(), "offset": e_o.get(), "hex": e_h.get()})

            updater = make_updater(feat, entry_title, entry_off, entry_hex)
            entry_title.bind("<KeyRelease>", updater)
            entry_off.bind("<KeyRelease>", updater)
            entry_hex.bind("<KeyRelease>", updater)

            btn_del = ctk.CTkButton(
                row,
                text="❌",
                width=35,
                fg_color="#d9534f",
                hover_color="#c9302c",
                command=lambda idx=i: self._delete_feature_at(idx)
            )
            btn_del.pack(side="left", padx=5)

    def _delete_feature_at(self, idx):
        if 0 <= idx < len(self.config_data["features"]):
            self.config_data["features"].pop(idx)
            self._render_features_table()

    def _dialog_add_feature(self):
        dialog = ctk.CTkToplevel(self)
        dialog.title("Add New Mod Menu Feature")
        dialog.geometry("400x380")
        dialog.grab_set()

        ctk.CTkLabel(dialog, text="Select Feature Type:", font=ctk.CTkFont(weight="bold")).pack(anchor="w", padx=20, pady=(15, 5))
        combo_type = ctk.CTkComboBox(dialog, values=["Category", "Toggle", "SeekBar", "Button", "InputValue", "Spinner"])
        combo_type.pack(fill="x", padx=20, pady=5)

        ctk.CTkLabel(dialog, text="Feature Title:").pack(anchor="w", padx=20, pady=(10, 2))
        entry_title = ctk.CTkEntry(dialog, placeholder_text="e.g. God Mode / Speed Multiplier")
        entry_title.pack(fill="x", padx=20, pady=5)

        ctk.CTkLabel(dialog, text="Hex Memory Offset (Optional):").pack(anchor="w", padx=20, pady=(10, 2))
        entry_off = ctk.CTkEntry(dialog, placeholder_text="e.g. 0x1A2841C")
        entry_off.pack(fill="x", padx=20, pady=5)

        ctk.CTkLabel(dialog, text="Hex Patch Bytes (Optional):").pack(anchor="w", padx=20, pady=(10, 2))
        entry_hex = ctk.CTkEntry(dialog, placeholder_text="e.g. C0 03 5F D6 or 00 00 A0 E3")
        entry_hex.pack(fill="x", padx=20, pady=5)

        def _confirm():
            ftype = combo_type.get()
            title = entry_title.get().strip()
            if not title:
                messagebox.showerror("Error", "Feature title cannot be empty.")
                return

            next_id = max([f.get("id", 0) for f in self.config_data["features"] if f.get("id", 0) > 0] + [99]) + 1

            if ftype == "Category":
                self.config_data["features"].append({"id": -next_id, "type": "Category", "title": title})
            elif ftype == "Toggle":
                self.config_data["features"].append({"id": next_id, "type": "Toggle", "title": title, "offset": entry_off.get().strip(), "hex": entry_hex.get().strip()})
            elif ftype == "SeekBar":
                self.config_data["features"].append({"id": next_id, "type": "SeekBar", "title": title, "min": 1, "max": 100, "offset": entry_off.get().strip()})
            elif ftype == "Button":
                self.config_data["features"].append({"id": next_id, "type": "Button", "title": title, "offset": entry_off.get().strip(), "hex": entry_hex.get().strip()})
            elif ftype == "InputValue":
                self.config_data["features"].append({"id": next_id, "type": "InputValue", "title": title, "offset": entry_off.get().strip()})
            elif ftype == "Spinner":
                self.config_data["features"].append({"id": next_id, "type": "Spinner", "title": title, "options": "Off,Mode 1,Mode 2", "offset": entry_off.get().strip()})

            self._render_features_table()
            dialog.destroy()

        ctk.CTkButton(dialog, text="Confirm & Add", fg_color="#00aaff", command=_confirm).pack(padx=20, pady=20, fill="x")

    def _save_preset_gui(self):
        file_path = filedialog.asksaveasfilename(
            initialdir=mod_tool.PRESETS_DIR,
            title="Save Preset JSON",
            defaultextension=".json",
            filetypes=[("JSON Files", "*.json")]
        )
        if file_path:
            with open(file_path, "w", encoding="utf-8") as f:
                json.dump(self.config_data, f, indent=4)
            messagebox.showinfo("Saved", f"Saved configuration preset to: {os.path.basename(file_path)}")

    def _load_preset_gui(self):
        file_path = filedialog.askopenfilename(
            initialdir=mod_tool.PRESETS_DIR,
            title="Load Preset JSON",
            filetypes=[("JSON Files", "*.json")]
        )
        if file_path:
            try:
                with open(file_path, "r", encoding="utf-8") as f:
                    self.config_data = json.load(f)
                self._load_config_into_gui()
                messagebox.showinfo("Loaded", f"Loaded preset: {os.path.basename(file_path)}")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to load preset: {e}")

    # ==========================================================================
    # TAB 3: APK INJECTION & PROGRESS BAR
    # ==========================================================================
    def _build_tab_inject(self):
        card_apk = ctk.CTkFrame(self.tab_inject, fg_color="#262626", corner_radius=10)
        card_apk.pack(fill="x", padx=10, pady=10)

        ctk.CTkLabel(card_apk, text="Target Game APK File:", font=ctk.CTkFont(size=14, weight="bold")).pack(anchor="w", padx=15, pady=(12, 5))

        entry_frame = ctk.CTkFrame(card_apk, fg_color="transparent")
        entry_frame.pack(fill="x", padx=15, pady=(0, 15))

        self.entry_apk_path = ctk.CTkEntry(entry_frame, placeholder_text="Drag & Drop APK here or click Browse...")
        self.entry_apk_path.pack(side="left", fill="x", expand=True, padx=(0, 10))

        btn_browse_apk = ctk.CTkButton(
            entry_frame,
            text="📁 Browse Game APK...",
            fg_color="#007acc",
            command=self._browse_target_apk
        )
        btn_browse_apk.pack(side="right")

        # Action Button
        self.btn_run_pipeline = ctk.CTkButton(
            self.tab_inject,
            text="🚀 START INJECTION PIPELINE",
            font=ctk.CTkFont(size=16, weight="bold"),
            height=45,
            fg_color="#28a745",
            hover_color="#1e7e34",
            command=self._start_injection_thread
        )
        self.btn_run_pipeline.pack(fill="x", padx=10, pady=5)

        # Progress Bar & Status
        self.lbl_progress_status = ctk.CTkLabel(self.tab_inject, text="Status: Ready to inject", font=ctk.CTkFont(size=12))
        self.lbl_progress_status.pack(anchor="w", padx=15, pady=(10, 2))

        self.progress_bar = ctk.CTkProgressBar(self.tab_inject, height=14, corner_radius=7)
        self.progress_bar.pack(fill="x", padx=10, pady=(0, 10))
        self.progress_bar.set(0.0)

        # Live GUI Terminal Console Textbox
        ctk.CTkLabel(self.tab_inject, text="Live Execution Console Terminal:", font=ctk.CTkFont(size=12, weight="bold")).pack(anchor="w", padx=15, pady=(5, 2))
        self.txt_console = ctk.CTkTextbox(self.tab_inject, fg_color="#1a1a1a", text_color="#00ff66", font=ctk.CTkFont(family="Consolas", size=11))
        self.txt_console.pack(fill="both", expand=True, padx=10, pady=(0, 10))

    def _browse_target_apk(self):
        file_path = filedialog.askopenfilename(
            title="Select Target Game APK or XAPK",
            filetypes=[("Android Packages", "*.apk;*.xapk;*.apks;*.zip")]
        )
        if file_path:
            self.entry_apk_path.delete(0, tk.END)
            self.entry_apk_path.insert(0, file_path)

    def _log_console(self, msg):
        self.txt_console.insert(tk.END, f"{msg}\n")
        self.txt_console.see(tk.END)

    def _start_injection_thread(self):
        apk_path = self.entry_apk_path.get().strip().strip('"')
        if not apk_path or not os.path.exists(apk_path):
            messagebox.showerror("Error", "Please select a valid game APK or XAPK file!")
            return

        self._apply_config_from_entries()

        self.btn_run_pipeline.configure(state="disabled", text="⏳ PIPELINE RUNNING...")
        self.progress_bar.set(0.0)
        self.txt_console.delete("1.0", tk.END)

        def _worker():
            try:
                def progress_cb(percent, msg):
                    self.after(0, lambda: self._update_progress_gui(percent, msg))

                final_apk = mod_tool.run_pipeline(apk_path, self.config_data, status_callback=progress_cb)
                self.after(0, lambda: self._on_pipeline_success(final_apk))
            except Exception as e:
                err_msg = str(e)
                self.after(0, lambda: self._on_pipeline_error(err_msg))

        threading.Thread(target=_worker, daemon=True).start()

    def _update_progress_gui(self, percent, msg):
        self.progress_bar.set(percent / 100.0)
        self.lbl_progress_status.configure(text=f"Status [{percent}%]: {msg}")
        self._log_console(f"[{percent}%] {msg}")

    def _on_pipeline_success(self, final_apk):
        self.btn_run_pipeline.configure(state="normal", text="🚀 START INJECTION PIPELINE")
        self.progress_bar.set(1.0)
        self.lbl_progress_status.configure(text="Status [100%]: PIPELINE COMPLETED SUCCESSFULLY!")
        self._log_console("\n" + "=" * 60)
        self._log_console(f" [X] SUCCESS! Final Signed Modded APK: {final_apk}")
        self._log_console("=" * 60)

        res = messagebox.askyesno("Success!", f"Modded APK Generated Successfully!\n\nLocation:\n{final_apk}\n\nWould you like to open the output folder?")
        if res:
            os.startfile(mod_tool.WORKSPACE)

    def _on_pipeline_error(self, err_msg):
        self.btn_run_pipeline.configure(state="normal", text="🚀 START INJECTION PIPELINE")
        self.lbl_progress_status.configure(text="Status: PIPELINE FAILED")
        self._log_console(f"\n[-] ERROR: {err_msg}")
        messagebox.showerror("Pipeline Failed", f"An error occurred during injection:\n\n{err_msg}\n\nPlease check Logs/log.txt for details.")

    def _load_config_into_gui(self):
        self.entry_lib_name.delete(0, tk.END)
        self.entry_lib_name.insert(0, self.config_data.get("lib_name", "MyLibName"))

        self.entry_toast_msg.delete(0, tk.END)
        self.entry_toast_msg.insert(0, self.config_data.get("toast_msg", "Modded by Shiyar_makesmod"))

        self.entry_menu_title.delete(0, tk.END)
        self.entry_menu_title.insert(0, self.config_data.get("menu_title", "Modded by Shiyar_makesmod"))

        self.entry_menu_subtitle.delete(0, tk.END)
        self.entry_menu_subtitle.insert(0, self.config_data.get("menu_subtitle", "LGL Mod Menu Injector Tool"))

        b64 = self.config_data.get("icon_b64", mod_tool.DEFAULT_VECTOR_ICON_B64)
        self._update_image_preview_from_b64(b64)
        self._render_features_table()


if __name__ == "__main__":
    app = ToolInjectorGUI()
    app.mainloop()

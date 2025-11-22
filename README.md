# 🚀 Lottie JSON → Telegram TGS Converter

### Windows Drag-and-Drop Tool for AE → Lottie → Telegram Stickers

This tool converts **Lottie JSON** animations (exported from After Effects via Bodymovin) into **Telegram .tgs** files using the official Lottie CLI.
Just **drag & drop** your `.json` file onto the converter — no command line needed.

Perfect for animators, sticker creators, designers, and developers making Telegram sticker packs.

---

## 🖼 Screenshots

<div align="center">

### 🔧 Folder Structure
<img src="images/FolderStructure.png" width="600"/>

---

### 🍒 Example Sticker Output
<img src="images/ExampleStickerResults.png" width="400"/>

</div>


## ✅ Features

* 🎯 **Zero command line** — drag & drop your JSON file
* 🔄 Converts `.json` → `.tgs` automatically
* 🎨 Preserves gradients, strokes, shapes (as long as Lottie supports them)
* ⚙️ Uses official `lottie_convert.py`
* 🪟 Works on any Windows machine with Python installed
* 📁 Outputs `.tgs` **in the same folder as the input file**
* 🧪 Validates Python + Lottie CLI installation automatically

---

## 📦 Included Files

| File                        | Description                                   |
| --------------------------- | --------------------------------------------- |
| `convert-lottie-to-tgs.bat` | Drag-and-drop script that converts JSON → TGS |

---

## 🛠 Requirements

Before using the converter, install two things:

---

### 1️⃣ Install Python 3 (Windows)

Download & install from:

📥 [https://www.python.org/downloads/](https://www.python.org/downloads/)

During installation, **make sure to enable this box**:

✔ **Add Python to PATH**

---

### 2️⃣ Install Lottie CLI

Open Command Prompt and run:

```bash
pip install "lottie[cli]"
```

This installs:

* `lottie_convert.py`
* the libraries necessary to parse + convert Lottie files

After installation, close CMD and reopen it so PATH updates.

---

## 🚀 How to Use

1. Export your animation from **After Effects**
   using **Bodymovin** → Lottie JSON.

2. Download this repo
   (`Code → Download ZIP` or `git clone`)

3. Locate:

```
convert-lottie-to-tgs.bat
```

4. Drag your `.json` file onto the `.bat`.

Example:

```
Drag:   CherryFlamingo.json
Result: CherryFlamingo.tgs
```

5. Use the `.tgs` with Telegram’s **@Stickers** bot.

---

## 🎨 Workflow (AE → Lottie → TGS → Telegram)

1. Animate in After Effects
2. Export using Bodymovin/LottieFiles extension (Lottie JSON) https://github.com/TelegramMessenger/bodymovin-extension/releases
3. Drop JSON onto the converter
4. Upload `.tgs` to Telegram via the official @Stickers bot
5. Enjoy your animated sticker

---

## 🧪 Troubleshooting

### ❌ “Python is not installed or not on PATH.”

Install Python & ensure **Add to PATH** is checked.

### ❌ “‘lottie_convert.py’ not found”

Install the CLI:

```bash
pip install "lottie[cli]"
```

Make sure to reopen Command Prompt afterward.

### ❌ Conversion FAILED

Check:

* JSON is valid Lottie format
* No unsupported AE effects
* Gradients use Lottie-safe methods
* File path has no restricted characters

---

## 🔧 Advanced Use (Developers)

Once the CLI is installed, you can run manual commands:

```bash
lottie_convert.py animation.json output.tgs --output-format tgs --fps 60 --optimize 2
```

The `.bat` file is simply a wrapper around that command.

---

## 🤝 Contributing

Pull requests and feature ideas are welcome — especially:

* `.lottie` bundle → TGS auto-unzip support
* Convert entire folder of JSON files
* GUI version
* AE preset templates for “Telegram-safe” design

---

## 📜 License

MIT License — free for personal & commercial use.

---

Just tell me and I’ll build it.

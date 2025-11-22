# Lottie JSON → Telegram TGS Converter (Windows Drag-and-Drop)

This is a simple Windows batch script that converts **Lottie JSON** animations  
(e.g. exported from After Effects via Bodymovin/LottieFiles) into **Telegram .tgs stickers**  
using the `lottie` CLI.

No command-line knowledge required – just **drag and drop**.

---

## ✅ What this does

- Takes a Lottie **`.json`** file
- Uses `lottie_convert.py` from the `lottie` Python package
- Outputs a **`.tgs`** file in the **same folder** with the same name

Example:

- Input: `CherryFlamingo.json`
- Output: `CherryFlamingo.tgs`

---

## 🧩 Requirements

You need:

1. **Windows**
2. **Python 3** installed  
   Download from the official site:  
   <https://www.python.org/downloads/>
3. The **Lottie CLI** installed via `pip`:

```bash
pip install "lottie[cli]"


⚠️ During Python installation, check the box:
"Add Python to PATH"
so that python and lottie_convert.py are available in your terminal.

# Virus-Sniper (Batch Script)

A simple yet powerful USB cleaner script written in pure Windows Batch (.bat).  
It scans USB drives, reveals hidden files, removes common malware, and generates a basic threat report.

---

## Features

-  Unhides hidden and system-protected files
-  Deletes known malicious files (`autorun.inf`, `.vbs`, `.lnk`, `.scr`)
-  Detects and logs suspicious `.exe` files
-  Identifies fake folders containing `.exe` with same name
-  Creates a `virus_report.txt` if threats are found

---

##  How to Use

1. Plug in your USB flash drive.
2. Run the script by double-clicking `VirusSniper.bat`.
3. Enter the USB drive letter (e.g., `G` or `H`).
4. Wait for the scan to complete.

---

## 📁 Files in This Repo

| File               | Description                         |
|--------------------|-------------------------------------|
| `VirusSniper.bat`  | The main batch file scanner         |
| `README.md`        | You’re reading it                   |
|`image.png`         | Screenshot of the script            |
|`img.png`           | Screenshot of the script            |
---

## Disclaimer

This script is **not a full antivirus**. It removes common threats based on simple logic.  
Always use trusted antivirus software for full protection.


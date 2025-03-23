# 🧹 Brave Debloater Script

A batch script that automates the installation and debloating of the Brave browser on Windows. This script applies privacy-focused tweaks, disables unwanted features, and replaces user profile files with preconfigured versions, giving you a clean, minimal Brave experience right out of the box.

---

## ⚙️ What This Script Does

1. **Installs Brave** using [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/).
2. **Applies registry-level group policy tweaks** to disable:
   - Brave Rewards
   - Brave Wallet
   - Brave VPN
   - Brave AI Chat (Leo)
   - Tor integration
3. **Creates the `Default` profile folder** (if it doesn’t exist).
4. **Downloads and installs preconfigured profile files** into: `%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default` for theme adjustments.

---

## 🛠 Features Disabled

| Feature       | Status     |
|---------------|------------|
| Brave Rewards | ❌ Disabled |
| Brave Wallet  | ❌ Disabled |
| Brave VPN     | ❌ Disabled |
| Brave AI Chat (Leo) | ❌ Disabled |
| Brave Tor      | ❌ Disabled |

---

## 📥 How to Use

1. **Download** or clone this repository.
2. **Run `debloat-brave.bat` as Administrator.**

This is required for:
- Installing software with `winget`
- Applying system-wide registry changes
- Writing to protected file paths

> ⚠️ Brave should be **closed** before running this script to ensure profile files are not locked.

---

## 🧾 Dependencies

- Windows 10 or 11
- [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (included in modern Windows versions)
- Internet connection to fetch configuration files

---

## 📁 Custom Profile Files Included

The script downloads and replaces the following Brave profile files:

- `Secure Preferences`
- `Preferences`
- `Web Data`
- `DIPS`

These files are hosted remotely and will be placed in the `Default` user profile folder to enforce your custom configuration.

---

## ❓ Why Debloat Brave?

Brave is a privacy-respecting browser, but it still includes optional features like crypto rewards, wallet integration, AI assistants, and sponsored content. If you want a faster, cleaner, and less distracting experience, this script helps streamline Brave into a lightweight, no-nonsense browser.

---


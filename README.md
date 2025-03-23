# 🧹 Debloat Brave

A simple script to install and debloat the Brave browser using Group Policy settings via the Windows registry.

## ⚙️ Features

This script disables several built-in Brave features that may be considered bloat or unwanted by privacy-focused users:

- 🪙 Brave Rewards
- 👛 Brave Wallet
- 🌐 Brave VPN
- 🤖 Brave AI Chat

## 🚀 How It Works

1. Installs Brave using `winget`.
2. Creates a temporary `.reg` file with policy settings.
3. Applies the file to the Windows Registry.
4. Deletes the temporary file after completion.

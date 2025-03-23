# 🧹 Debloat Brave

A simple script to install and debloat the Brave browser using [Group Policy settings](https://support.brave.com/hc/en-us/articles/360039248271-Group-Policy) via the Windows registry.

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

## 📥 Usage

Download or copy the `debloat-brave.bat` file from this repository and **run it as Administrator**.

> 🛡️ **Note:** Running as Administrator is required to apply system-wide registry changes.

## 🧠 Why Debloat Brave?

While Brave is a great browser for privacy, some of its built-in features—like Rewards, Wallet, and AI Chat—may be unnecessary or undesired for certain users. This script helps you strip it down to just what you need.

## 📜 License

MIT

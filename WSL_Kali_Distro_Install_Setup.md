# Kali Linux WSL Setup Guide

This guide will set up Kali Linux using WSL2 on Windows and install the `kali-linux-large` toolset. This environment can be used for cybersecurity competitions, CTFs, labs, NCL, CyberForce, and club activities.

## 1. Install Kali Linux

Open **PowerShell** and run:

```powershell
wsl --install -d kali-linux
```

Wait for the installation to complete.

If Windows asks you to restart your computer, restart before continuing.

## 2. Start Kali Linux

Open PowerShell and run:

```powershell
wsl -d kali-linux
```

The first time Kali starts, you may be asked to create a Linux username and password.

Remember this password. You will need it when using commands with `sudo`.

## 3. Update Kali

Once you are inside the Kali terminal, update the package lists:

```bash
sudo apt update
```

Then update all currently installed packages:

```bash
sudo apt full-upgrade -y
```

This may take several minutes.

## 4. Install Kali Large

Install the `kali-linux-large` metapackage:

```bash
sudo apt install -y kali-linux-large
```

This installs a large collection of cybersecurity tools provided by Kali Linux.

The installation can take a while depending on your internet connection and computer. Make sure you have enough free disk space before starting.

## 5. Install and Configure Zsh

Install Zsh along with autosuggestions, syntax highlighting, and Kali's default configuration:

```bash
sudo apt install -y \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    kali-defaults
```

Make Zsh your default shell:

```bash
chsh -s /usr/bin/zsh
```

Exit Kali:

```bash
exit
```

You should now be back in PowerShell.

Restart the Kali WSL instance:

```powershell
wsl --terminate kali-linux
```

Then start Kali again:

```powershell
wsl -d kali-linux
```

Verify that Zsh is running:

```bash
ps -p $$ -o comm=
```

You should see:

```text
zsh
```

You can also check your default shell:

```bash
echo $SHELL
```

You should see something similar to:

```text
/usr/bin/zsh
```

## 6. Verify the Installation

Check that `kali-linux-large` was installed:

```bash
dpkg -l | grep kali-linux-large
```

You can also test some common tools.

### Nmap

```bash
nmap --version
```

### John the Ripper

```bash
john
```

### Metasploit

```bash
msfconsole
```

If these commands work, your Kali environment is ready.

## Starting Kali Later

You do not need to reinstall Kali every time.

Whenever you want to use your Kali WSL environment, open PowerShell or Windows Terminal and run:

```powershell
wsl -d kali-linux
```

To leave Kali:

```bash
exit
```

## View Your WSL Installations

To see all Linux distributions installed on your computer:

```powershell
wsl --list --verbose
```

You may see something similar to:

```text
NAME          STATE      VERSION
Ubuntu        Stopped    2
kali-linux    Running    2
```

Each WSL distribution is its own Linux environment.

## Access Windows Files from Kali

Windows drives are available inside WSL under `/mnt/`.

For example, your `C:` drive is located at:

```text
/mnt/c/
```

To access your Windows Downloads folder:

```bash
cd /mnt/c/Users/YOUR_WINDOWS_USERNAME/Downloads
```

Replace `YOUR_WINDOWS_USERNAME` with your Windows account folder name.

You can see the available Windows user folders with:

```bash
ls /mnt/c/Users/
```

This is useful during competitions because you can download a challenge file through Windows and immediately analyze it using Kali.

For club activities, it is recommended to have **Kali WSL for quick everyday work** and a **Kali VM available for tasks that require a full Linux environment**.

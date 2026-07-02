#Requires -RunAsAdministrator

Clear-Host

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "     Ubuntu WSL Installer"
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# Verify Administrator
if (-not ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator))
{
    Write-Host "This script must be run as Administrator." -ForegroundColor Red
    Pause
    exit
}

Write-Host "Checking WSL installation..."

try {
    $distros = wsl --list --quiet 2>$null
}
catch {
    $distros = ""
}

if ($distros -contains "Ubuntu") {
    Write-Host ""
    Write-Host "Ubuntu is already installed." -ForegroundColor Green
    Pause
    exit
}

Write-Host ""
Write-Host "Installing Ubuntu using WSL..."
Write-Host ""

wsl --install -d Ubuntu

Write-Host ""
Write-Host "===================================" -ForegroundColor Green
Write-Host "Installation command completed."
Write-Host ""
Write-Host "If Windows asks you to restart,"
Write-Host "restart your PC."
Write-Host ""
Write-Host "After reboot, Ubuntu will finish"
Write-Host "installing automatically."
Write-Host "===================================" -ForegroundColor Green

Pause
#--- Install the Windows Subsystem for Linux ---
cinst -y Microsoft-Windows-Subsystem-Linux --source="windowsfeatures"

#--- Install Ubuntu 18.04 LTS ---
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile ~/Ubuntu.appx -UseBasicParsing
Add-AppxPackage -Path ~/Ubuntu.appx

# run the distro once and have it install locally with root user, unset password
RefreshEnv
Ubuntu1804 install --root
Ubuntu1804 run apt update
Ubuntu1804 run apt upgrade -y

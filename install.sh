#!/bin/sh
# has not been tested
# to do
# install burp ce
# figure a way to add all relevant programs to favorite bar

install_Dotfiles () {
cp .bashrc .bash_aliases ~/ && cd ~ && source .bashrc && source .bash_aliases
}

wallpaper_Setting () {
# set wallpaper attempt number 1
gsettings set org.gnome.desktop.background picture-uri file://"$PWD"/images/wallpaper-1.jpg
break
}

main_Install () {
    if sudo apt update && sudo apt upgrade -y ; then
        if sudo apt install vim wireshark sqlmap ruby nmap macchanger kismet htop git gimp curl ; then
            return
        else
            printf "install failed, fixing broken"
            sudo apt --fix-broken install
        fi
    fi
}

metasploit_Config () {
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
}

install_Dotfiles
wallpaper_Setting
main_Install
metasploit_Config

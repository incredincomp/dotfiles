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
        if sudo apt install vim wireshark sqlmap ruby nmap macchanger kismet htop gimp curl ; then
            return
        else
            printf "install failed, fixing broken"
            sudo apt --fix-broken install
        fi
    else
        printf "install failed, fixing broken"
        sudo apt --fix-broken install
    fi
}

metasploit_Config () {
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
}

chrome_Config () {
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
    wget https://dl.google.com/linux/linux_signing_key.pub
    sudo apt-key add linux_signing_key.pub
    sudo apt update
    sudo apt install google-chrome-stable -y
}

install_Atom () {
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    sudo apt update
    sudo apt install atom
}
java_Config () {
    sudo apt install openjdk-8-jre
}

#burp_Config
#curl https://portswigger.net/burp/releases/download?product=community&version=[2-9].[1-9].[02-99]&type=jar
#}

install_Dotfiles
wallpaper_Setting
main_Install
metasploit_Config
chrome_Config

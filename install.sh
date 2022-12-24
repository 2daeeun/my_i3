#!/bin/sh

# ----- Upgrade -----
sudo apt-get update
sudo apt-get full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# ----- Basic Package -----
sudo apt install -y sudo
sudo apt install -y wget
sudo apt install -y git

# ----- Chrome Install -----
# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
# sudo apt update
# sudo apt install google-chrome-stable

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install python3-apt -y
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm -rf google-chrome-stable_current_amd64
sudo rm -rf /etc/apt/sources.list.d/google.list

# ----- Microcode for Intel/AMD -----
# sudo apt install -y intel-microcode 
sudo apt install -y amd64-microcode

# ----- Window Manager -----
sudo apt install -y xorg i3 i3status

# ----- Sound packages -----
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# ----- Brightness -----
sudo apt install -y brightnessctl                           # Control device brightness

# ----- 리눅스 유틸리티 ----------
sudo apt install -y ack-grep                               # grep alternater
sudo apt install -y neofetch                               # Show system information
sudo apt install -y terminator                             # Terminator
sudo apt install -y htop                                   # Task manager
sudo apt install -y tlp tlp-rdw                            # Saving laptop battery power
sudo apt install -y neovim                                 # NeoVim
sudo apt install -y xdotool                                # command-line X11 automation tool



# ----- Windows Manager Support Tool -----
sudo apt install -y arandr                                  # arandr GUI
sudo apt install -y rofi                                    # Application dmenu
sudo apt install -y lightdm                                 # Lock Screen
sudo apt install -y xfce4-power-manager                     # xfce power manager
sudo apt install -y gpick                                   # Color Picker
sudo apt install -y numlockx                                # Control the state of NumLock     
sudo apt install -y vlc                                     # Video Player
#sudo apt install -y xpad                                   # Sticky note application 
sudo apt install -y kolourpaint                             # Paint
sudo apt install -y mcomix                                  # Comic book viewer
sudo apt install -y feh                                     # Image viewer
sudo apt install -y gedit                                   # Text editor
#sudo apt install -y leafpad                                # Text editor
#sudo apt install -y xfce4-screenshooter                    # screenshooter
sudo apt install -y scrot                                   # screenshooter
#sudo apt install -y mate-calc                              # Mate calculator
sudo apt install -y apcalc                                  # CLI calculator
sudo apt install -y libreoffice                             # Free office application
sudo apt install -y aria2                                   # Command-line download utility
sudo apt install -y cheese 					                # Camera
sudo apt install -y parcellite				                # Clipboard tool (Shortcut : Ctrl+Alt+H)
sudo apt install -y xinput                                  # utility to configure and test X input devices
sudo apt install -y barrier                                 # KVM software

# ----- Hangul input -----
sudo apt install -y ibus ibus-hangul fonts-nanum            # ibus 한글
#sudo apt install -y fcitx-lib* fcitx-hangul fonts-nanum 	# fcitx 한글

sudo apt install -y brightnessctl                           # Control device brightness
sudo apt install -y network-manager			            	# nmtui(네트워크 관리자)
sudo apt install -y xtrlock			            	        # Lock display and mouse


#---------- 개발 유틸리티 ----------
sudo apt install -y curl                                    # Command line to data transfer tool 
sudo apt install -y software-properties-common 		        # PPA Support
sudo apt install -y openjdk-17-jdk                          # JDK 17
sudo apt install -y build-essential gcc g++ make            # C/C++ 컴파일러 & 기본 라이브러리
sudo apt install -y libc6-dev 			                   	# stdio.h 해더파일
sudo apt install -y ccls                                    # C/C++/Objective-C 언어 서버
sudo apt install -y exuberant-ctags                         # ctag
sudo apt install -y cscope                                  # cscope
sudo apt install -y python3-dev python3-pip python3-venv    # python
sudo apt install -y fuse libfuse2                           # FUSE (Filesystem in Userspace) 
sudo apt install -y virtualbox                              # Virtual machine
sudo apt install -y rsync                                   # one way
sudo apt install -y unison                                  # both way

# ----- etc -----
sudo apt install -y firmware-amd-graphics libgl1-mesa-dri   # AMD GPU firmware

# snap
# sudo apt install snapd -y
# sudo systemctl unmask snapd.service
# sudo systemctl enable snapd.service
# sudo systemctl start snapd.service

#FlatPak & KakaoTalk
sudo apt install ufw -y
sudo apt install ssh -y
sudo ufw enable
sudo ufw allow 22/tcp
#sudo apt install flatpak -y
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#sudo flatpak install flathub com.usebottles.bottles -y

# remove
sudo apt-get update
sudo apt-get purge nano -y
sudo apt-get purge vim -y 
sudo apt-get purge vim-common -y
sudo apt-get purge vim-nox -y
sudo apt-get purge vim-runtime -y
sudo apt-get purge vim-tiny -y
sudo apt-get purge mousepad -y
sudo apt-get purge qterminal -y
sudo apt-get purge xfce4-terminal -y
sudo apt-get purge xiterm+thai -y
sudo apt-get purge xterm -y
sudo apt-get purge mlterm -y
sudo apt-get purge parole -y
# sudo apt-get purge firefox -y
# sudo rm -rf /etc/firefox/ /usr/lib/firefox* /usr/lib/firefox-addons/ /home/leedaeeun/.mozilla

# Fin
sudo apt-get update
sudo apt-get full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# Final message
echo "███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗";
echo "██╔════╝██║████╗  ██║██║██╔════╝██║  ██║";
echo "█████╗  ██║██╔██╗ ██║██║███████╗███████║";
echo "██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║";
echo "██║     ██║██║ ╚████║██║███████║██║  ██║";
echo "╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝";

 
# Exit the script
exit 0

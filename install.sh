#!/bin/sh

#전체 업그레이드
sudo apt-get update
sudo apt-get full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

#---------- 리눅스 유틸리티(최소한 있어야 하는 패키지) ----------
sudo apt-get install sudo -y
sudo apt-get install wget -y
sudo apt-get install git -y

#크롬 설치
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install python3-apt -y
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm -rf google-chrome-stable_current_amd64 
sudo rm -rf /etc/apt/sources.list.d/google.list

#---------- 리눅스 유틸리티 ----------
sudo apt-get install ack-grep -y
sudo apt-get install neofetch -y
sudo apt-get install terminator -y
sudo apt-get install htop -y
sudo apt-get install tlp tlp-rdw -y
sudo apt-get install neovim -y
sudo apt-get install xdotool -y                                 # 뭐하는 패키지 인지는 잘 모르겠는데 move-to-next-monitor 스크립트 사용하려면 필요함
sudo apt-get install rsync -y                                   # 단방향 데이터 sync
sudo apt-get install unison -y                                  # 양방향 데이터 sync
sudo apt-get install i3 i3status -y                             # i3(window manager) 설치

#---------- 보조 유틸리티 ----------
sudo apt-get install arandr -y                                  # arandr GUI
sudo apt-get install rofi -y
sudo apt-get install lightdm -y                                 # 화면 잠금
sudo apt-get install xfce4-power-manager -y                     # 전원 관리자
sudo apt-get install gpick -y
sudo apt-get install numlockx -y
sudo apt-get install vlc -y
#sudo apt-get install xpad
sudo apt-get install kolourpaint -y                             # 그림판
#sudo apt-get install leafpad -y
sudo apt-get install mcomix -y                                  # 만화책&이미지 뷰어
sudo apt-get install feh -y                                     # 이미지 뷰어
sudo apt-get install gedit -y
sudo apt-get install xfce4-screenshooter -y                     # 스크린샷
#sudo apt-get install mate-calc -y                              # 계산기
sudo apt-get install apcalc -y                                  # CLI 기반 계산기
sudo apt-get install libreoffice -y
sudo apt-get install aria2 -y
sudo apt-get install cheese -y 					                # 카메라
sudo apt-get install parcellite -y				                # (클립보드)(단축키는 Ctrl+Alt+H)
sudo apt-get install xinput -y
sudo apt-get install barrier -y
sudo apt-get install fcitx-lib* fcitx-hangul fonts-nanum -y 	# 한글
sudo apt-get install brightnessctl -y
sudo apt-get install alsa-utils -y				                # alsamixer(볼륨 조절)
sudo apt-get install network-manager -y			            	# nmtui(네트워크 관리자)
sudo apt-get install xtrlock -y			            	        # Lock display and mouse
#---------- 개발 유틸리티 ----------
sudo apt-get install curl -y
sudo apt-get install python3-pip -y
sudo apt-get install software-properties-common -y 		        # PPA Support
sudo apt-get install openjdk-11-jdk -y                          # JDK 11
sudo apt-get install build-essential gcc g++ make -y            # C/C++ 컴파일러 & 기본 라이브러리
sudo apt-get install libc6-dev -y 			                   	# stdio.h 해더파일
sudo apt-get install ccls -y                                    # C/C++/Objective-C 언어 서버
sudo apt-get install exuberant-ctags -y                         # ctag
sudo apt-get install cscope -y                                  # cscope
sudo apt-get install python3-dev python3-pip python3-venv -y    # 파이썬 개발 환경
sudo apt-get install fuse libfuse2 -y                           # FUSE (Filesystem in Userspace) 
sudo apt-get install virtualbox -y
#---------- 기타 ----------
sudo apt-get install firmware-amd-graphics libgl1-mesa-dri -y   # AMD GPU firmware?

#snap
sudo apt-get install snapd -y
sudo systemctl unmask snapd.service
sudo systemctl enable snapd.service
sudo systemctl start snapd.service

#FlatPak & KakaoTalk
sudo apt-get install ufw -y
sudo apt-get install ssh -y
sudo ufw enable
sudo ufw allow 22/tcp
#sudo apt-get install flatpak -y
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#sudo flatpak install flathub com.usebottles.bottles -y

#remove
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
#sudo apt-get purge firefox -y
#sudo rm -rf /etc/firefox/ /usr/lib/firefox* /usr/lib/firefox-addons/ /home/leedaeeun/.mozilla

#Fin
sudo apt-get update
sudo apt-get full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# Final message
echo script complit
 
# Exit the script
exit 0

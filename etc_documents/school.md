### 학교 수업을 위해 ~~어쩔 수 없이~~ 설치해야 할 프로그램
* Band
```swift
wget https://ssl.pstatic.net/cmstatic/desktop/v1.10.10/BAND-1.10.10-amd64.deb && sudo dpkg -i BAND-1.10.10-amd64.deb
```
* Band 설치하면서 libappindicator3-1 의존성 문제 생길 경우 
```swift
wget http://ftp.us.debian.org/debian/pool/main/libi/libindicator/libindicator3-7_0.5.0-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/liba/libappindicator/libappindicator3-1_0.4.92-7_amd64.deb
sudo apt install ./libindicator3-7_0.5.0-4_amd64.deb
sudo apt install ./libappindicator3-1_0.4.92-7_amd64.deb
```
* OBS Studio & FFmpeg
```swift
sudo apt install v4l2loopback-dkms && sudo apt-get install ffmpeg && sudo apt-get install obs-studio -y
```
* Zoom 
```swift
wget https://zoom.us/client/latest/zoom_amd64.deb && sudo dpkg -i zoom_amd64.deb
```

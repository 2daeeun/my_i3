### 토토로 바탕화면 설정
GUI 환경에서는 다음과 같은 경로에 저장
```swift
sudo wget -P /usr/share/images/desktop-base https://raw.githubusercontent.com/2daeeun/my_linux/master/totoro.png
```
i3에서는 ~/.config/i3 디렉토리에 사진하고 config 파일에 heh 설정함  
[사진출처](https://wallpaperaccess.com/download/totoro-pc-1998829)
(메뉴 > 배경화면)에서 배경화면 설정하기
***
### Shutdown & reboot Command Not Found
```swift
sh -c 'echo "export PATH=$PATH:/usr/sbin" >> ~/.bashrc'
```
```swift
sh -c 'echo "export PATH=$PATH:/usr/sbin" >> ~/.zshrc'
```
***
### ZIP & UNZIP 한글 깨짐
```swift
echo -e '\nexport UNZIP=\042-O cp949\042\nexport ZIPINFO=\042-O cp949\042' >> /etc/profile
```
***
### 터미네이터 설정 
* line_down(아래로 한 줄 스크롤)
* line_up(위로 한 줄 스크롤)

이것들 설정 수동으로 하기

### GRUB TIMEOUT
```swift
sudo vi /etc/default/grub
```
```swift
GRUB_TIMEOUT=1
```
```swift
sudo update-grub
```



***
### 아톰 설치
아톰 플러그인은 (Edit > preference > install)에 가서  
atom-beautify, auto-indent, atom-alignment, autoclose-html, color-picker, highlight-selected, vim-mode-plus, minimap, emmet, Pigments, Linter, atom-html-preview  들을 설치하기
***
### 기본 쉘 확인
```swift
echo $SHELL
```
만약 기본 쉘이 bash이면 [이 링크](https://nochoco-lee.tistory.com/350) 참고해서 쉘 바꾸기. 
***
### 기본 에디터 확인
```swift
update-alternatives --config editor
```
***
### 최종 마무리
```swift
sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
```
***
### how to use the latest Linux kernel
```swift
echo deb http://deb.debian.org/debian experimental main > /etc/apt/sources.list.d/experimental.list
```
then how to "sudo apt search linux-image-6."
***
### 언어 설정
```swift
sudo dpkg-reconfigure locales
```

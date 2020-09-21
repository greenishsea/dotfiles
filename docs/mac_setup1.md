# mac_setup1

## 1.os
MAC OS initial setup

### After MAC OS Initial setup
#### general
https://matome.naver.jp/odai/2138629469334511401

### xcode
From AppStore
### gcc (xcode-select)
xcode-select --install

## 2.network
(set FireWall on)

## 3.homebrew
- confirm /usr/local permissions
http://brew.sh/
https://blog.ymyzk.com/2016/06/macos-sierra-homebrew/
http://stangler.hatenablog.com/entry/2016/09/28/162747

### cask
brew cask --version
### cask version (by tapping)
brew tap caskroom/versions

## 4.cui stuff's settings
### anyenv (after installing, anyenv install rbenv && pyenv && ndenv && phpenv)
http://qiita.com/luckypool/items/f1e756e9d3e9786ad9ea

### install apps with Brewfile
cp -ip Brewfile ~/Brewfile
brew tap Homebrew/bundle
brew bundle

### use brew's openssl
http://saitou.hatenablog.com/entry/2016/11/09/083000

echo "export PATH=/usr/local/Cellar/openssl/1.0.2j/bin:$PATH" >> ~/.bash_profile

### (skip phpenv, composer settings)

## 5.gui stuff's settings
### (skip better snap tool, Sketch settings)

### add firefox addons
- FireBug
- adblock plus
- all in one gestures
- tab mix plus
- brief
- searchWP

### add chrome extensions
- RSS Subscription Extension (by Google)
- DHC Restlet Client
- ColorZilla
- PerfectPixel by WellDoneCode
- Image Downloader
- Awesome Screenshot
- ato-ichinen
- React Developer Tools
- Redux DevTools
- (Google Keep Extension)

## 6.others

### (skip Dropbox, Box, Better touch tool settings)

### Better touch tool -> after cask & license
load file hiroyuki.bettertouchtool

### (For US keyboard) ei kana command key config
https://qiita.com/onigra/items/99e77becd0c42661d360

karabiner-elements ( brew cask install karabiner-elements )
or
ei-kana ( brew cask install cmd-eikana )

### iTerm2 color setting
copy solarized colors files and profiles/colors import and set solarized dark

### mod git user config
skip (default: user name & machine name)

### generate ssh keys at ~
http://qiita.com/shizuma/items/2b2f873a0034839e47ce

ls -la ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
- register pubkey at Github / BitBucket

- test
ssh -T git@github.com
ssh -T git@bitbucket.org

- add cofig file if you use multiple ssh keys. vi ~/.ssh/config
Host bitbucket.org
  HostName bitbucket.org
  IdentityFile ~/.ssh/id_rsa
  User git

Host github
  HostName github.com
  IdentityFile ~/.ssh/id_rsa
  User git

### Vscode
la ~/Library/ApplicationSupport/Code/User/settings.json
la ~/Library/ApplicationSupport/Code/User/keybindings.json
la ~/Library/ApplicationSupport/Code/User/snippets/

### add Automator workflow files

### (skip android-studio, Microsoft Remote Desktop settings)


## 7.tips


end

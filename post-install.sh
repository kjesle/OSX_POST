## SET HOSTNAME IN ALL THE RIGHT PLACES
sudo scutil --set ComputerName "ComputerName"
sudo scutil --set HostName "ComputerName"
sudo scutil --set LocalHostName "ComputerName"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "ComputerName"

## INSTALL XCODE
xcode-select --install
read -p "Press any key to continue." -n1 -s

## Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### CLI tools
brew update
brew install fish
brew install gcc
brew install git
brew install git-flow
brew install gradle
brew install jenv
brew install node
brew install maven
brew install nvm
brew install python3
brew install the_silver_searcher
brew install thefuck
brew install tmux
brew install yarn
brew install tree
brew install unrar
brew install wget

### Casks
### Developer
brew cask install java
brew cask install java6
brew cask install java7
brew cask install java8
brew cask install iterm2	
brew cask install postgres
brew cask install virtualbox
brew cask install vagrant
brew cask install visual-studio-code
brew cask install sublime-text3
brew cask install docker
brew cask install kitematic
brew cask install intellij-idea
brew cask install postman
brew cask install gitkraken
brew cask install cyberduck
brew cask install jetbrains-toolbox
brew cask install soapui

### Browsers
brew cask install firefox
brew cask install firefoxdeveloperedition
brew cask install google-chrome

### Div
brew cask install karabiner-elements
brew cask install calibre
brew cask install omnifocus
brew cask install fantastical
brew cask install 1password
brew cask install evernote
brew cask install caffeine
brew cask install dropbox
brew cask install slack
brew cask install spotify
brew cask install vlc
brew cask install spectacle
brew cask install malwarebytes-anti-malware

### Quick Look Plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzipql

### Fonts
brew cask install font-fira-code
brew cask install font-open-sans

## MACOS UPDATE
sudo softwareupdate --install -all

echo ""
echo "Disabling press-and-hold for keys in favor of a key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo ""
echo "Setting a blazingly fast keyboard repeat rate (ain't nobody got time fo special chars while coding!)"
defaults write NSGlobalDomain KeyRepeat -int 0

echo ""
echo "Disabling auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo ""
echo "Enabling the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

echo ""
echo "Disable the sudden motion sensor as it's not useful for SSDs"
sudo pmset -a sms 0

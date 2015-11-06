## SET HOSTNAME IN ALL THE RIGHT PLACES
sudo scutil --set ComputerName "ComputerName"
sudo scutil --set HostName "ComputerName"
sudo scutil --set LocalHostName "ComputerName"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "ComputerName"

## INSTALL XCODE
xcode-select --install
read -p "Press any key to continue." -n1 -s

## Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### CLI tools
brew update

brew install caskroom/cask/brew-cask
brew install gcc
brew install git
brew install tree
brew install unrar
brew install wget
brew install Caskroom/cask/java



### Cask
brew cask install 1password
brew cask install alfred
brew cask install dash
brew cask install evernote
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install telegram
brew cask install caffeine
brew cask install dropbox
brew cask install opera
brew cask install postgres
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install electrum
brew cask install skype
brew cask install transmission
brew cask install virtualbox
brew cask install vagrant
brew cask install macvim
brew cask install vlc
brew cask install atom
brew cask install sublime-text3


## OH MY ZSH
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
## MACOS UPDATE
sudo softwareupdate --install -all

## Meteor
curl https://install.meteor.com/ | sh

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
echo "Disable the sudden motion sensor as itâ€™s not useful for SSDs"
sudo pmset -a sms 0

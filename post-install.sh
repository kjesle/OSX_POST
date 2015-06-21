## SET HOSTNAME IN ALL THE RIGHT PLACES
sudo scutil --set ComputerName "MACHINE_NAME"
sudo scutil --set HostName "MACHINE_NAME"
sudo scutil --set LocalHostName "MACHINE_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MACHINE_NAME"

## INSTALL XCODE
xcode-select --install
read -p "Press any key to continue." -n1 -s

## Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### CLI tools
brew install caskroom/cask/brew-cask
brew install curl
brew install Caskroom/cask/java
brew install gcc
brew install git
brew install nodejs
brew install scala
brew install the_silver_searcher
brew install tree
brew install unrar
brew install wget

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
brew cask install webstorm
brew cask install intellij-idea
brew cask install atom
brew tap caskroom/versions
brew cask install sublime-text3


## OH MY ZSH
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
## MACOS UPDATE
sudo softwareupdate --install -all

## Meteor
curl https://install.meteor.com/ | sh

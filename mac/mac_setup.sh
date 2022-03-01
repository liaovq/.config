# mac setup

# /etc/hosts
# https://www.ipaddress.com/ 
199.232.68.133 raw.githubusercontent.com
199.232.68.133 user-images.githubusercontent.com
199.232.68.133 avatars2.githubusercontent.com
199.232.68.133 avatars1.githubusercontent.com

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install nvm, autojump, neofetch, neovim, mycli, pyenv, ranger, scrcpy, 
# java
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk8
# dart
brew tap dart-lang/dart
brew install dart

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

# android 
export ANDROID_HOME=$HOME/Library/android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# java 
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/home
export JAVA_HOME=$(/usr/libexec/java_home)
# Settings > Build, Execution, Deployment > Build Tools > Gradle > Gradle JDK

# manually set bash
chsh -s $(which zsh)
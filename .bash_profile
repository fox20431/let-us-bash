export PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \$ '

# source
for f in ~/.bash_profile.d/*; do source $f; done

# bash git prompt
# from `brew install bash-git-prompt` or `https://github.com/magicmonty/bash-git-prompt`
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# bash completion
# from `brew install bash-completion` or `https://github.com/scop/bash-completion`
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Proxy.
HTTP_PROXY_ENTRY=http://127.0.0.1:8118
HTTPS_PROXY_ENTRY=http://127.0.0.1:8118
#HTTPS_PROXY_ENTRY=socks5://127.0.0.1:10808
export http_proxy=${HTTP_PROXY_ENTRY}
export https_proxy=${HTTPS_PROXY_ENTRY}
export no_proxy=localhost,127.0.0.1,10.96.0.0/12,192.168.59.0/24,192.168.49.0/24,192.168.39.0/24
#export all_proxy=${HTTP_PROXY_ENTRY}

# Java
export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home
export LASTEST_JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home
export JAVA_HOME=$JAVA_11_HOME

# android
export ANDROID_SDK_HOME=$HOME/Library/Android/sdk

# MAC OS
export MAC_SDK_HOME=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk

# vcpkg
export VCPKG_ROOT="$HOME/vcpkg"


# docker remote
#export DOCKER_HOST=ssh://root@warrior.hihusky.com

# QT
#export QT_6_HOME=$HOME/Qt/6.3.1

# expand PATH
clt_bin="/Library/Developer/CommandLineTools/usr/bin/"
texlive_bin="/usr/local/texlive/2022basic/bin/universal-darwin"
gcc_arm_bin="/Users/ming/opt/gcc-arm-none-eabi-5_4-2016q3/bin"
python3_bin="/Users/ming/Library/Python/3.8/bin"
node16_bin="/usr/local/opt/node@16/bin"
ruby_2_7="/usr/local/opt/ruby@2.7/bin"
ruby_lastest="/usr/local/opt/ruby/bin"
export PATH="$HOME/scripts:\
$texlive_bin:\
$python3_bin:\
$node16_bin:\
$HOME/.cargo/bin:\
$JAVA_HOME/bin:\
$ANDROID_SDK_HOME/emulator:\
$ANDROID_SDK_HOME/cmdline-tools/latest/bin:\
$ANDROID_SDK_HOME/platform-tools:\
$ruby_2_7:\
/usr/local/opt/ruby/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/usr/sbin:\
$PATH:\
/sbin"

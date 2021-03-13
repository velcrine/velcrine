function harm { ~/bin/editors/pycharm/bin/pycharm.sh ${1:-.} & disown; sleep 2; exit; }
function idea { ~/bin/editors/idea/bin/idea.sh ${1:-.} & disown; sleep 2; exit; }
function goland { ~/bin/editors/goland/bin/goland.sh ${1:-.} & disown; sleep 2; exit; }
function webstorm { ~/bin/editors/webstorm/bin/webstorm.sh ${1:-.} & disown; sleep 2; exit; }
function studio { ~/bin/editors/android-studio/bin/studio.sh ${1:-.} & disown; sleep 2; exit; }


#android-specifics
alias emulate="~/bin/frameworks/android/emulator/emulator -avd Nexus_5X_API_29_x86 & disown; sleep 2; exit"
export ANDROID_HOME="/home/pkv/bin/frameworks/android"
export JAVA_HOME=/home/pkv/bin/editors/android-studio/jre

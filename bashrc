# decide which type of prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color)
    color_prompt=yes
    ;;
  xterm-256color)
    color_prompt=yes
    ;;
esac

# set the basic prompt
if [ "$color_prompt" = yes ];
then
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# load profile
if [[ -f $HOME/.bash_profile ]];
then
  source $HOME/.bash_profile
fi

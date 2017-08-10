USER_COLOUR="02;39m"
PATH_COLOUR="02;38m"
GIT_BRANCH_COLOR="07;36m"
PROMPT_COLOR="01;37m"

PS1=' \033[$GIT_BRANCH_COLOR\]$(parse_git_branch)\[\033[00m\]\n${debian_chroot:+($debian_chroot)}\[\033[$USER_COLOUR\]\u@local \033[00m\]\[\033[$PATH_COLOUR\] \w\[ \033[00m\]\[\033[$PROMPT_COLOR\]\n\n$ '

unset color_prompt force_color_prompt


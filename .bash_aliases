# ~/.bash_aliases

alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -C'
alias lla='ls -Al'
#
## Typing Errors ##
alias cd..='cd ..'
alias lslbk='lsblk'
alias ipa='ip a'

# Old style 'specific' aliases (aka bad habits...)
alias in='sudo pacman -S'
#alias iny='sudo pacman -S --noconfirm'
alias se='pacman -Ss'
#alias sei='pacman -Si'
#alias sel='pacman -Qs'
#alias seli='pacman -Qi'
alias upd='sudo pacman -Syu'
alias updy='sudo pacman -Syu --noconfirm'
alias docs='cd ~/Documents'
alias dl='cd ~/Downloads'

# New aliases, abbreviations for base commands instead of specific commands
alias p='pacman'
alias sp='sudo pacman'
alias sc='systemctl'
alias ssc='sudo systemctl'
alias jc='journalctl'
alias sjc='sudo journalctl'
alias mkd='mkdir -pv'
alias v='vim'
alias sv='sudo vim'
alias ka='killall'
alias rel='. ~/.bashrc' # Reload ~/.bashrc
alias grep='grep --color=auto' # Color grep - highlight desired sequence
alias lsgrep='ls |grep'
alias lagrep='ls |grep'
alias ccat='highlight --out-format=ansi' # Color cat - print file with syntax highlighting
alias starwars='telnet towel.blinkenlights.nl'

alias yget='yaourt -G'
alias getpkg='yaourt -G'
alias yse='yaourt -Ss'
alias ysei='yaourt -Si'
alias ysel='yaourt -Qs'
alias yseli='yaourt -Qi'

alias shred='shred -f -n 10 -z -u'

alias encrypt-gpg='gpg -er cory'
alias gpg-encrypt='gpg -er cory'
alias en-gpg='gpg -er cory'
alias gpg-en='gpg -er cory'

alias mntusb="sudo mount /dev/sdb1 /mnt/usb && echo 'USB device mounted successfully on /mnt/usb'"
alias mntusb-c="sudo mount /dev/sdc1 /mnt/usb2 && echo 'USB device mounted successfully on /mnt/usb2'"
alias mntusb-d="sudo mount /dev/sdd1 /mnt/usb3 && echo 'USB device mounted successfully on /mnt/usb3'"

alias mntbak-a="sudo mount /dev/sda3 /mnt/backup && echo 'External HDD mounted successfully on /mnt/backup'"
alias mntbak-b="sudo mount /dev/sdb3 /mnt/backup && echo 'External HDD mounted successfully on /mnt/backup'"
alias mntbak-c="sudo mount /dev/sdc3 /mnt/backup && echo 'External HDD mounted successfully on /mnt/backup'"
alias mntbak-d="sudo mount /dev/sdd3 /mnt/backup && echo 'External HDD mounted successfully on /mnt/backup'"

alias umnt="sudo umount -R /mnt"
alias umntusb="sudo umount /mnt/usb && echo 'USB device unmounted from /mnt/usb'"
alias umntusb-c="sudo umount /mnt/usb2 && echo 'USB device unmounted from /mnt/usb2'"
alias umntusb-d="sudo umount /mnt/usb3 && echo 'USB device unmounted from /mnt/usb3'"
alias umntbak="sudo umount /mnt/backup && echo 'External HDD unmounted from /mnt/backup'"

alias python='/usr/bin/python3'

alias ugrep='systemctl list-unit-files |grep'

alias ssh-srv='ssh cory@$PUB_IP'
alias ssh-lansrv='ssh cory@$LANSRV'

alias scriptrp='scriptreplay'
#alias tree='tree -p'

alias neo='neofetch'

alias yt='youtube-dl --add-metadata -ic' # Download video link
alias yta='youtube-dl --add-metadata -xic' # Download only audio

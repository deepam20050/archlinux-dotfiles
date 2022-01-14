set fish_greeting

# Aliases
alias update "paru -Syu"
alias mirror "sudo reflector -f 100 -l 100 --number 30 --verbose --save /etc/pacman.d/mirrorlist"
alias unlock "sudo rm /var/lib/pacman/db.lck"
alias update-fc 'sudo fc-cache -fv'
alias krr 'cd $HOME/Desktop/karma/parishram'

# Helpful bashscripts
function ex
    /bin/bash $HOME/.config/fish/extractor.sh $argv
end

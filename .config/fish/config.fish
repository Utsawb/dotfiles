if status is-interactive
end

function fish_greeting
end

if status is-login 
    if test (tty) = /dev/tty1
        exec Hyprland &> /dev/null
    end
end

# Shit pulled from the bashrc
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias vi='lvim'

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.npm-global/bin

starship init fish | source

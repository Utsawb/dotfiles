if status is-interactive
end

function fish_greeting
end

if status is-login 
    if test (tty) = /dev/tty1
        exec Hyprland &> /dev/null
    end
end

function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Shit pulled from the bashrc
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias vi='lvim'

set -Ux OLLAMA_HOST 0.0.0.0
set -Ux OLLAMA_MODELS /mnt/LongTermStore/ollama/
set -Ux XR_RUNTIME_JSON /usr/share/openxr/1/openxr_monado.json

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.npm-global/bin

starship init fish | source

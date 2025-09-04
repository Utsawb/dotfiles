# stop the default greeting
function fish_greeting
end

# convenient ls shortcuts
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# dolphin kinda sucks ngl
function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

alias vi='lvim'

# ollama model install paths
# set -Ux OLLAMA_HOST 0.0.0.0
# set -Ux OLLAMA_MODELS /mnt/LongTermStore/ollama/
set -Ux XR_RUNTIME_JSON /usr/share/openxr/1/openxr_monado.json
# set -Ux XR_RUNTIME_JSON /usr/share/openxr/1/openxr_wivrn.json

# fish_add_path ~/.cargo/bin
# fish_add_path ~/.npm-global/bin

starship init fish | source

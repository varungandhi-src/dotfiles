if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    atuin init fish | source
    
    # Aliases
    alias ls='eza'
    alias sys_ls='/usr/bin/ls'
end
/Users/varun/.local/bin/mise activate fish | source

# Sourcegraph local development
fish_add_path /Users/varun/.sg
fish_add_path /opt/homebrew/bin
fish_add_path /Users/varun/google-cloud-sdk/bin
fish_add_path /Users/varun/.atuin/bin

# Custom key bindings - runs after default bindings are loaded
function fish_user_key_bindings
    # Disable ctrl-l so it passes through to tmux
    bind --erase --preset ctrl-l
    

end

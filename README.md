# Dotfiles

Personal configuration files for development environment.

## Setup

1. Clone with submodules:
```bash
git clone --recursive https://github.com/your-username/dotfiles.git
```

Or if already cloned:
```bash
git submodule update --init --recursive
```

2. Run the setup script to create symlinks:
```bash
./setup-symlinks.sh
```

This will symlink:
- `.config/fish` → Fish shell configuration
- `.config/tmux` → Tmux configuration  
- `.config/starship.toml` → Starship prompt configuration

## Updating

### Update submodules (tpm):
```bash
git submodule update --remote
git add .
git commit -m "Update submodules"
```

### Update tpm plugins:
In tmux, press `Ctrl-l + U` to update all plugins.

## Dependencies

### Required

- **Fish Shell** - Primary shell
- **Starship** - Cross-shell prompt
- **Atuin** - Shell history management
  - Install following: https://docs.atuin.sh/#quickstart
  - Already configured in fish config

### Optional

- **eza** - Modern `ls` replacement (aliased to `ls`)
- **tmux** - Terminal multiplexer
- **mise** - Runtime version manager

## Key Bindings

- **Ctrl-l** - tmux prefix key
- **Up arrow** - Atuin history search
- **Ctrl-R** - Atuin history search

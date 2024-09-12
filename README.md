# Zsh Setup with Starship and Plugins

This README provides instructions to set up your Zsh environment with the necessary plugins for enhanced functionality.

## Steps

### 1. Clone The Following epositories
```bash
git clone --depth 1 https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/zsh-history-substring-search
```

### 2. Copy Configuration Files

Copy the following configuration files are present in their respective directories:

- `~/.zshrc`
- `~/.config/starship.toml`

### 3. Update Environment Variables

Make sure to replace `$USER` with your actual username in the paths for the plugin sources. For example, update the following in your `.zshrc` file:

```bash
source /home/$USER/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /home/$USER/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/$USER/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/$USER/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
```

### 4. Install Starship
```bash
curl -sS https://starship.rs/install.sh | sh
```

### 5. Install Fonts
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/NerdFontsSymbolsOnly.zip
unzip NerdFontsSymbolsOnly.zip -d ~/.fonts
```

### 6. Source zshrc
```bash
source ~/.zshrc
```

### References
- `https://starship.rs/guide/`
- `https://www.nerdfonts.com/`
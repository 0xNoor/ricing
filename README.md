# My personal Ricing Files

# PS1 for .bashrc
`cat PS1 | tee -a $HOME/.bashrc`

# Dot files 
This includes Rofi, i3-gaps, polybar

`cp -R config/* $HOME/.config/`

# Setup zsh with oh-my-zsh and p10k theme

```
/* Using Curl */
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/* Using Wget */
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

/* Setup p10k theme */
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME="[^"]*"/ZSH_THEME="powerlevel10k/powerlevel10k"/g' ~/.zshrc
```

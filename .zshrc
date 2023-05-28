test -f ~/.bash_profile  && source ~/.bash_profile
test -f ~/.bash_alias && source ~/.bash_alias
DEFAULT_USER=$USER
# source <(ng completion script)
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
# zinit安装
test -f ~/zshrc/.zinit_conf && source ~/zshrc/.zinit_conf
#mac brew 安装 nvm配置
zinit ice lucid wait='0' if'[[ -s "/usr/local/opt/nvm/nvm.sh" ]]'
zinit snippet /usr/local/opt/nvm/nvm.sh
# go版本管理
zinit ice lucid wait='0' if'[[ -s "/Users/fei/.gvm/scripts/gvm" ]]'
zinit snippet /Users/fei/.gvm/scripts/gvm
#jenv 控制java版本切换
zinit ice lucid wait='0' 
zinit snippet https://github.com/BeBester/zshrc/blob/master/jenv.sh
# conda_setup
zinit ice lucid wait='0' 
zinit snippet https://github.com/BeBester/zshrc/blob/master/conda_setup.sh

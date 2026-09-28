# ============================================================
# Powerlevel10k instant prompt
# ============================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ============================================================
# Environment
# ============================================================

typeset -U path PATH

# GNU sed
path=(
  /usr/local/opt/gnu-sed/libexec/gnubin
  $path
)

# GNU coreutils man pages
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman${MANPATH:+:$MANPATH}"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
path=(
  "$PNPM_HOME"
  $path
)


# ============================================================
# Aliases / functions
# ============================================================

alias vim='nvim'

proxy() {
  export http_proxy='http://127.0.0.1:8001'
  export https_proxy='http://127.0.0.1:8001'
}

unproxy() {
  unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY
}


# ============================================================
# Zinit
# ============================================================

ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"

if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
  print -P "%F{220}Installing Zinit...%f"

  command mkdir -p "${ZINIT_HOME:h}"

  command git clone \
    https://github.com/zdharma-continuum/zinit.git \
    "$ZINIT_HOME" || {
      print -P "%F{160}Zinit installation failed.%f"
      return 1
    }
fi

source "$ZINIT_HOME/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# ============================================================
# Powerlevel10k
# ============================================================

zinit ice depth=1
zinit light romkatv/powerlevel10k


# ============================================================
# Oh My Zsh libraries
# ============================================================

zinit snippet OMZL::git.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::clipboard.zsh


# ============================================================
# Completion definitions
# ============================================================

# 通用额外补全
zinit ice blockf
zinit light zsh-users/zsh-completions

# kubectl
zinit ice as"completion"
zinit snippet OMZP::kubectl

# Docker CLI 官方补全
zinit ice as"completion"
zinit snippet \
  https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker

# Homebrew / Poetry 等安装到 site-functions 的补全
if [[ -d /usr/local/share/zsh/site-functions ]]; then
  fpath=(
    /usr/local/share/zsh/site-functions
    $fpath
  )
fi


# ============================================================
# Zsh completion
# ============================================================

autoload -Uz compinit
compinit

zinit cdreplay -q


# ============================================================
# fzf-tab
# ============================================================

zinit light Aloxaf/fzf-tab


# ============================================================
# Interactive plugins
# ============================================================

zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice lucid wait='0'
zinit light zdharma-continuum/fast-syntax-highlighting


# ============================================================
# Utility plugins
# ============================================================

# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# 浏览器打开当前 Git 仓库
zinit ice lucid wait='1'
zinit light paulirish/git-open

# x 解压命令
zinit ice lucid wait='1'
zinit snippet OMZP::extract


# ============================================================
# Powerlevel10k config
# ============================================================

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

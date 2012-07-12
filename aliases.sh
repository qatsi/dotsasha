# Алиасы для RVM.
alias rvi='rvm info ruby,homes'
alias rvl='rvm list'
alias rvlk='rvm list known'
alias rvg='rvm use 1.9.3-p0@global'
alias rvr='rvm use 1.9.3-p0@rails3'
alias rvgl='rvm gemset list'
alias rvgd='rvm gemset gemdir'

# Алиасы для RubGems
alias gec='gem cleanup'
alias gei='gem install'
alias gel='gem list'
alias geu='gem update'
alias geus='gem update --system'
alias ges='gem search --remote'

# Алиасы для Git
alias gits='git status --short'
alias gitss='git status'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitc='git commit'
alias gita='git add'
alias gitai='git add --interactive'
alias giti='git instaweb'
alias gitl='git log'
alias gitlo='git log --oneline'
alias gitla='git log --pretty --stat HEAD^..HEAD'
alias gitck='git checkout'

# Не знаю, как сделать так, чтобы Git показывал неотслеживаемые файлы,
# а не только каталоги. Вывод неотслеживаемых файлов
gitu () {
  local UNTRACKED
  for UNTRACKED in `git status -s | awk '{print $2}'`; do
    if [ -d ${UNTRACKED} ]; then
      git status -s ${UNTRACKED};
    fi;
  done
}
# Удаление неотслеживаемых файлов
gitud () {
  local UNTRACKED_FILE
  for UNTRACKED_FILE in `gitu`; do
    rm -i ${UNTRACKED_FILE};
  done
}
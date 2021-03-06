# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi

# Initialise ssh-agent
source ${HOME}/.ssh-agent-setup.sh

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Just say no
export VAGRANT_GOVUK_NFS=no

# Set paths
export GOROOT=`go env GOROOT`
export GOPATH=$HOME/go

export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Preferred editor
export EDITOR='vim'

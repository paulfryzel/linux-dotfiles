PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/workspace/google/depot_tools
PATH=$PATH:/opt/dart/dart-sdk/bin

# Yarn global bin
PATH=$PATH:$HOME/.yarn/bin

# Idris
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:$HOME/Workspace/idris-sandbox/.cabal-sandbox/bin

# Miniconda3
PATH=$PATH:$HOME/miniconda3/bin

# Google Cloud
if [ -d $HOME/google-cloud-sdk ]; then
  PATH=$PATH:$HOME/google-cloud-sdk/bin
  . $HOME/google-cloud-sdk/completion.bash.inc
  . $HOME/google-cloud-sdk/path.bash.inc
fi

# OPAM
if [ -d $HOME/.opam ]; then
  . $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
fi

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi

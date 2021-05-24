export LESSOPEN="|pygmentize -g -f terminal256 -O encoding=latin1 %s"
export PATH="${HOME}/.local/bin:${PATH}"
export JDK_HOME="${HOME}/jdk"
export LESS="--ignore-case --long-prompt -R --no-init --quit-if-one-screen"

. ${HOME}/miniconda3/etc/profile.d/conda.sh

# Stuff for Kubernetes and OpenShift

if [ -n "$ZSH_VERSION" ]; then
  TARGET="zsh"
elif [ -n "$BASH_VERSION" ]; then
  TARGET="bash"
fi

if [ -f /usr/local/bin/kubectl ]; then
  source <(kubectl completion $TARGET)
fi

if [ -f /usr/local/bin/oc ]; then
  source <(oc completion $TARGET)
fi


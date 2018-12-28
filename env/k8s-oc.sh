# Stuff for Kubernetes and OpenShift

if [ -n "$ZSH_VERSION" ]; then
  source <(kubectl completion zsh)
  source <(oc completion zsh)
elif [ -n "$BASH_VERSION" ]; then
  source <(kubectl completion bash)
  source <(oc completion bash)
fi


use_kube_ps1() {
    source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
    PS1='$(kube_ps1)'$PS1
}

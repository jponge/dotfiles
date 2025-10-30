if type -q kubectl
    kubectl completion fish | source
    
    abbr k "kubectl"
    abbr ka "kubectl apply -f"
    abbr kd "kubectl delete -f"
    abbr kgp "kubectl get pods"
    abbr kgs "kubectl get services"
end


if command -q go
    # `go install` targets GOBIN if set, otherwise GOPATH/bin
    set -l go_bin (go env GOBIN)
    test -n "$go_bin"; or set go_bin (go env GOPATH)/bin
    fish_add_path -ag $go_bin
end

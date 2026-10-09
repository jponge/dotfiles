if type -q podman
    podman completion fish | source

    if podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}' >/dev/null 2>&1
        set -xg DOCKER_HOST unix://$(podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}')
    end
    set -xg TESTCONTAINERS_RYUK_DISABLED true
end

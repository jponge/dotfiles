podman completion fish | source

set -xg DOCKER_HOST unix://$(podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}')
set -xg TESTCONTAINERS_RYUK_DISABLED true

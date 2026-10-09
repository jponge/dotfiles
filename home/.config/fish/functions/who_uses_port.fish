function who_uses_port --description "Find which process is listening on a specific TCP port"
    if test (count $argv) -eq 0
        echo "Usage: who_uses_port <port_number>"
        return 1
    end

    set -l port $argv[1]

    # -n: no DNS resolution, -P: no port name resolution
    lsof -nP -iTCP:$port -sTCP:LISTEN
end

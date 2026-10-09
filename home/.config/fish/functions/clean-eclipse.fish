function clean-eclipse --description "Recursively delete Eclipse metadata (.settings, .classpath, .project)"
    set -l target (test -n "$argv[1]"; and echo "$argv[1]"; or echo ".")

    if not test -d "$target"
        echo "Error: '$target' is not a valid directory" >&2
        return 1
    end

    find "$target" -name target -type d -prune -o \
        \( -name ".settings" -type d -exec rm -rf {} + \) -o \
        \( \( -name ".classpath" -o -name ".project" \) -type f -delete \)

    echo "Eclipse metadata (.settings/, .classpath, .project) removed from $target"
end

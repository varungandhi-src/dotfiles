function ??
    set -l args $argv
    
    if test (count $args) -eq 0
        echo "Usage: ?? <command> [args...]"
        return 1
    end
    
    # Join arguments and replace spaces with hyphens for man page lookup
    set -l manpage_name (string join "-" $args)
    
    # Try man page first
    if man $manpage_name >/dev/null 2>&1
        man $manpage_name
        return 0
    end
    
    # Try --help
    if eval "$args --help" >/dev/null 2>&1
        eval "$args --help" | less
        return 0
    end
    
    # Try <first cmd> help <rest>
    if test (count $args) -gt 1
        set -l first_cmd $args[1]
        set -l rest_args $args[2..-1]
        if eval "$first_cmd help $rest_args" >/dev/null 2>&1
            eval "$first_cmd help $rest_args" | less
            return 0
        end
    end
    
    # Try -help
    if eval "$args -help" >/dev/null 2>&1
        eval "$args -help" | less
        return 0
    end
    
    # Try -h
    if eval "$args -h" >/dev/null 2>&1
        eval "$args -h" | less
        return 0
    end
    
    echo "No help found for: $args"
    return 1
end

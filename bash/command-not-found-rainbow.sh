command_not_found_handle () {
    if [ -x /usr/lib/command-not-found ]; then
        /usr/bin/python3.8 /usr/lib/command-not-found -- $1 |& lolcat;
        return $?;
    else
        return 127;
    fi
}


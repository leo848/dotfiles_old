#!/bin/bash

command_not_found_handle () {
    if [ -x /usr/lib/command-not-found ]; then
        /usr/bin/python3.8 /usr/lib/command-not-found -- "$1" |& gay --gay;
        return 127;
    else
        return 127;
    fi
}


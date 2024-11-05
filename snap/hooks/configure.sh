#!/bin/sh

# source the management script
. "$SNAP/manage"

handle_config()
{
        env_var="$(env_var)"

        # # Validate HTTP port
        # if ! expr "$env_var" : '^[0-9]\+$' > /dev/null; then
        #         echo "\"$env_var\" is not a valid HTTP port" >&2
        #         return 1
        # fi

       # run function from management script
        set_env_var "$env_var"

        # Restart example-server to apply new config
        snapctl restart myproxy
}
handle_config
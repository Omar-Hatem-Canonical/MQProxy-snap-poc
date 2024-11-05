#!/bin/sh
# source the management script
. "$SNAP/bin/manage"

# call the http_port function from the management script
ENV_VAR="$(env_var)"
export ENV_VAR

"$SNAP/bin/example-server" -www "$HTTP_PORT" 
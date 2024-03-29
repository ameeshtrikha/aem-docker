#!/bin/bash

# if `docker run` first argument start with `--` the user is passing launcher arguments
source /etc/bash.bashrc
env

if [[ $# -lt 1 ]] || [[ "$1" == "--"* ]]; then
echo $AEM_JVM_OPTS $AEM_RUNMODE -jar $AEM_JAREXPR $AEM_START_OPTS
    exec java $AEM_JVM_OPTS $AEM_RUNMODE -jar $AEM_JARFILE $AEM_START_OPTS
fi

# if other params assume user want to run his own process, for example a `bash` shell to explore this image
exec "$@"
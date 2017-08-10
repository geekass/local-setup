# Remove all Docker containers.

# 1. Stop all containers
# 2. Remove all containers

function stop_all_containers {
    echo ""
    echo "Stop all running containers:"
    docker ps |
        while IFS= read -r line
        do
            local CONTAINER_ID="$(echo $line | cut -d ' ' -f 1)"
            if [ "$CONTAINER_ID" != "CONTAINER" ];
            then
                echo "Stopping container $CONTAINER_ID"
                local RESULT=$(`echo docker stop $CONTAINER_ID`)
            fi
        done
}

function remove_all_containers {
    echo ""
    echo "Remove all stopped containers:"
    docker ps -a |
        while IFS= read -r line
        do
            local CONTAINER_ID="$(echo $line | cut -d ' ' -f 1)"
            if [ "$CONTAINER_ID" != "CONTAINER" ];
            then
                echo "Removing container $CONTAINER_ID"
                local RESULT=$(`echo docker rm $CONTAINER_ID`)
            fi
        done
}

echo "Running Docker container cleanup..."

stop_all_containers
remove_all_containers

Remove all Docker volumes.

function remove_all_volumes {
    echo ""
    echo "Remove all volumes:"
    docker volume ls |
        while IFS= read -r line
        do
            local VOLUME_ID="$(echo $line | cut -d ' ' -f 2)"
            if [ "$VOLUME_ID" != "VOLUME" ];
            then
                echo "Removing volume $VOLUME_ID"
                local RESULT=$(`echo docker volume rm $VOLUME_ID`)
            fi
        done
}

echo "Running Docker volume cleanup..."

remove_all_volumes


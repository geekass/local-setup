# Remove all Docker images

function remove_all_images {
    echo ""
    echo "Remove all local images:"
    docker images |
        while IFS= read -r line
        do
            local IMAGE_ID="$(echo $line | cut -d ' ' -f 3)"
            if [ "$IMAGE_ID" != "IMAGE" ];
            then
                echo "Removing image $IMAGE_ID"
                local RESULT=$(`echo docker rmi -f $IMAGE_ID`)
            fi
        done
}

echo "Running Docker image cleanup..."

remove_all_images


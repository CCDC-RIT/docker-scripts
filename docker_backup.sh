#!/bin/bash

backup_path="~/home/core/docky"

tar_opt="--exclude='/var/run*'"

cd "${BASH_SOURCE%/*}" || exit 

mkdir -p $backup_path

echo "Starting docker backup..."

echo "" 

echo "Backing up images..."

echo ""

for i in `docker inspect --format='{{.Name}}' $(docker ps -q) | cut -f2 -d\/`
        do container_name=$i
        echo -n "$container_name - "
        container_image=`docker inspect --format='{{.Config.Image}}' $container_name`
        mkdir -p $backup_path/$container_name
        save_file="$backup_path/$container_name/$container_name-image.tar"
        docker save -o $save_file $container_image
        echo "OK"
done

echo "Backing up volumes..."

for i in `docker inspect --format='{{.Name}}' $(docker ps -q) | cut -f2 -d\/`
        do container_name=$i
        mkdir -p $backup_path/$container_name
        echo -n "$container_name - "
	docker run --rm --userns=host \
  	--volumes-from $container_name \
  	-v $backup_path:/backup \
  	-e TAR_OPTS="$tar_opts" \
  	ritccdc/docker-backup \
        backup "$container_name/$container_name-volume.tar.xz"
	echo "OK"
done

echo "Done. Fuck off."

echo ""
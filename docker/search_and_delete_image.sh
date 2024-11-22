#!/bin/bash

echo "Enter name image: "
read name_image

docker_image=$(docker images $name_image)

if [[ ! -z "${docker_image}" ]]; then
	docker rmi $name_image
fi

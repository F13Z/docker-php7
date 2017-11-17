#!/bin/bash
## Do not try to delete if container doesn't exist
docker inspect website > /dev/null
errorCode=$?
if [[ "${errorCode}" == '0' ]]; then
    echo "Removing old container"
    docker rm website
fi

echo "Starting container"
ID=$(docker run -d -t -i \
    -v /path/of/your/website:/var/www/website \
    -p "80:80" \
    --add-host="website.localhost.com:127.0.0.1"\
    --name="website" website)
echo ${ID}

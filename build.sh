#!/bin/sh

SCRIPT_ROOT=$(dirname $0)
VERSION="v2.5.36"

docker build -t "biglion/sixpack-server:${VERSION}" --file "${SCRIPT_ROOT}/Dockerfile" "${SCRIPT_ROOT}"
docker build -t "biglion/sixpack-web:${VERSION}" --file "${SCRIPT_ROOT}/web.Dockerfile" "${SCRIPT_ROOT}"

echo "docker push biglion/sixpack-server:${VERSION}"
echo "docker push biglion/sixpack-web:${VERSION}"

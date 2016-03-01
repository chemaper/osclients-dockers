#!/bin/bash
sudo docker build --force-rm --tag chemaper/osclients .
sudo docker build --force-rm --tag chemaper/osclients-alpine -f Dockerfile-alpine .
docker push chemaper/osclients
docker push chemaper/osclients-alpine

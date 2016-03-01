#!/bin/bash
docker build --force-rm --tag chemaper/rpi-openstack-osclients -f Dockerfile-rpi .
docker push chemaper/rpi-openstack-osclients

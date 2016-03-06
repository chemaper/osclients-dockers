#!/bin/bash
#docker run --rm  -it --env-file vars osclients 'print o.get_token()'
uname -m |grep arm >/dev/null

if [ $? -eq 0 ] ; then
   IMAGE='chemaper/rpi-openstack-osclients'
else
   IMAGE='chemaper/osclients-alpine'
fi
sudo docker run --entrypoint /bin/sh --rm  -it --env-file vars $IMAGE


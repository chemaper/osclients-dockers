#!/bin/bash
uname -m |grep arm >/dev/null

if [ $? -eq 0 ] ; then
   IMAGE='chemaper/rpi-openstack-osclients'
else
   IMAGE='chemaper/osclients-alpine'
fi

#docker run --rm  -it --env-file vars chemaper/osclients 'print o.get_token()'
sudo docker run --rm  -it --env-file vars $IMAGE $*


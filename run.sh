#!/bin/bash
#docker run --rm  -it --env-file vars chemaper/osclients 'print o.get_token()'
sudo docker run --rm  -it --env-file vars chemaper/osclients-alpine


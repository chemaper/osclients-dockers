#!/bin/bash
#docker run --rm  -it --env-file vars osclients 'print o.get_token()'
sudo docker run --entrypoint /bin/sh --rm  -it --env-file vars osclients-alpine


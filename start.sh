#!/bin/bash

NOTEBOOK_DIR=/root/analysis
source activate open-ml 

if [ -n "$JPY_API_TOKEN" ] ; then
jupyterhub-singleuser \
  --port=8888 \
  --ip=0.0.0.0 \
  --user=$JPY_USER \
  --cookie-name=$JPY_COOKIE_NAME \
  --base-url=$JPY_BASE_URL \
  --hub-prefix=$JPY_HUB_PREFIX \
  --hub-api-url=$JPY_HUB_API_URL \
  --notebook-dir=$NOTEBOOK_DIR
else
jupyter notebook --no-browser --ip=0.0.0.0 --notebook-dir=$NOTEBOOK_DIR
fi

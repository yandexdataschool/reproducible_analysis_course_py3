#!/bin/bash
# You can use the script to build and run the repository in the local docker
# Everware-style

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t reproducible_analysis_course_demo_py3 $DIR
docker run -it -p 127.0.0.1:8888:8888 -v "$DIR":/root/analysis reproducible_analysis_course_demo_py3

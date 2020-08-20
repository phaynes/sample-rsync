#!/bin/bash
source host-paths.txt
export SOURCE_HOST SOURCE_PATH LOCAL_PATH
echo rsync --remove-source-files -zarvh -e ssh $SOURCE_HOST:$SOURCE_PATH $LOCAL_PATH 

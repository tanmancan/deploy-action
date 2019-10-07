#!/bin/sh -l

echo "$INPUT_KEY" > KEY_FILE
ls -la
cat KEY_FILE
echo $INPUT_USER
echo $INPUT_HOST
echo $INPUT_PORT
echo $INPUT_KEY
echo $INPUT_LOCAL_PATH
echo $INPUT_REMOTE_PATH

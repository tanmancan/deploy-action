#!/bin/sh -l

echo "${INPUT_KEY}" > KEY_FILE

chmod 600 KEY_FILE

ls -la

scp -o StrictHostKeyChecking=no -i KEY_FILE -P "${INPUT_PORT}" -r "${INPUT_LOCAL_PATH}" "${INPUT_USER}@${INPUT_HOST}:${INPUT_REMOTE_PATH}"

# cat KEY_FILE
# echo $INPUT_USER
# echo $INPUT_HOST
# echo $INPUT_PORT
# echo $INPUT_KEY
# echo $INPUT_LOCAL_PATH
# echo $INPUT_REMOTE_PATH

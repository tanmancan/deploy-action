#!/bin/sh -l

echo "${INPUT_KEY}" > KEY_FILE

chmod 600 KEY_FILE

scp -o StrictHostKeyChecking=no -i KEY_FILE -P "${INPUT_PORT}" -r ${INPUT_LOCAL_PATH} "${INPUT_USER}@${INPUT_HOST}:${INPUT_REMOTE_PATH}"

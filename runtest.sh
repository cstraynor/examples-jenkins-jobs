#!/bin/bash

API_KEY=$1
API_SECRET=$2
DEVICE_TYPE_ID=$3
TEST_TYPE=$4
TEST_APP=$5
TEST_SCRIPT=$6
CONFIG_FILE=$7

sudo chmod oug+rw .
echo "*****************************"
cd appurify_client

PATH=.env/bin:$PATH

echo '**> Creating virtual env..'
if [ -d ".env" ]; then
    echo "**> virtualenv exists"
else
    echo "**> creating virtualenv"
    virtualenv .env
fi

echo '**> TEST'
echo '**> Activating environment..'

pwd
source .env/bin/activate
pip install requests
pip install httplib2


### do the tests

echo "*****************************"

echo "python -m appurify.client --api-key $API_KEY --api-secret $API_SECRET --app-src $TEST_APP --test-src $TEST_SCRIPT --test-type $TEST_TYPE --device-type-id $DEVICE_TYPE_ID  --config-src $CONFIG_FILE"

python -m appurify.client --api-key $API_KEY --api-secret $API_SECRET  --app-src $TEST_APP --test-src $TEST_SCRIPT  --test-type $TEST_TYPE --device-type-id $DEVICE_TYPE_ID  --config-src $CONFIG_FILE

exit 0

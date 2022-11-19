#!/bin/sh
set -eu

chmod +x /cmd/algolia
chmod +x /cmd/jq

FILE_PATH=$1
INDEX_NAME=$2
APPLICATION_ID=$3
ADMIN_API_KEY=$4

./cmd/jq -c '.[]' $GITHUB_WORKSPACE/$FILE_PATH | ./cmd/algolia objects import $INDEX_NAME -F - --application-id $APPLICATION_ID --admin-api-key $ADMIN_API_KEY --auto-generate-object-id-if-not-exist

if [ "$?" != "0" ] ; then
  echo "😢 Failed to upload your data to Algolia, PLZ report an issue, thx!"
  exit 1
fi

echo "🚀 Successfully uploaded!"
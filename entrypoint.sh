#!/bin/sh
set -eu

chmod +x cmd/algolia
chmod +x cmd/jq

./cmd/jq -c '.[]' $1 | ./cmd/algolia objects import $2 -F - --application-id $3 --admin-api-key $4 --auto-generate-object-id-if-not-exist

if [ "$?" != "0" ] ; then
  echo "😢 Failed to upload your data to Algolia, PLZ report an issue, thx!"
  exit 1
fi

echo "🚀 Successfully uploaded!"
#!/bin/bash

echo "============================================================"
echo " ## Scripts for Building & Running this code base locally."
echo "      -> Building And Running"
echo "      -> Building And Running"
echo "      -> Building And Running"
echo "      -> ......."
echo "      -> ......."
echo "      -> ......."
echo "      -> BAR.sh "
echo "============================================================"

echo "============================================================"
echo "      -> Building Assets : Synergy Quantum S5 "

cd browser
npm install . 
npm run release

echo "============================================================"
echo "      -> Building Package : Synergy Quantum S5 "
echo "-------------------------------------------------------------"
go build -o minio-dev main.go
echo "-------------------------------------------------------------"


echo "============================================================"
echo "============================================================"
echo "      -> Setting Environment Variables "
echo "          => MINIO_UPDATE=off"
echo "          => MINIO_ACCESS_KEY_FILE=access_key"
echo "          => MINIO_SECRET_KEY_FILE=secret_key"
echo "          => MINIO_KMS_MASTER_KEY_FILE=kms_master_key"
echo "          => MINIO_SSE_MASTER_KEY_FILE=sse_master_key"
echo "-------------------------------------------------------------"

export MINIO_UPDATE=off
export MINIO_ACCESS_KEY_FILE=access_key
export MINIO_SECRET_KEY_FILE=secret_key
export MINIO_KMS_MASTER_KEY_FILE=kms_master_key
export MINIO_SSE_MASTER_KEY_FILE=sse_master_key

echo "============================================================"
echo "============================================================"
echo "      -> Starting Server.."
./minio-dev  server /data/






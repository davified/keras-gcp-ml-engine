#!/usr/bin/env bash

set -e

source ./common.sh

MODEL_BINARIES=$GCLOUD_JOB_DIR/export

# Create a model resource on Cloud ML Engine
gcloud ml-engine models create ${MODEL_NAME} --regions ${REGION}

# Create a version of the model
gcloud ml-engine versions create ${VERSION_NAME} \
  --model ${MODEL_NAME} --origin $MODEL_BINARIES \
  --runtime-version 1.2

# ERROR: (gcloud.ml-engine.versions.create) If --origin is provided as a local path, --staging-bucket must be given as well
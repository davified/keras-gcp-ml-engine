#!/usr/bin/env bash

set -e

source ./common.sh

JOB_NAME="census_keras_$(date +%s)"
GCS_TRAIN_FILE=gs://cloudml-public/census/data/adult.data.csv
GCS_EVAL_FILE=gs://cloudml-public/census/data/adult.test.csv
TRAIN_STEPS=200

echo "INFO: Setting project to ${PROJECT_ID}"
gcloud config set project ${PROJECT_ID}

if ! gsutil ls | grep -q ${GCLOUD_JOB_DIR}/; then
  gsutil mb -l ${REGION} ${GCLOUD_JOB_DIR}
fi

gcloud ml-engine jobs submit training $JOB_NAME \
                                    --stream-logs \
                                    --runtime-version 1.4 \
                                    --job-dir $GCLOUD_JOB_DIR \
                                    --package-path trainer \
                                    --module-name trainer.task \
                                    --region us-central1 \
                                    -- \
                                    --train-files $GCS_TRAIN_FILE \
                                    --eval-files $GCS_EVAL_FILE \
                                    --train-steps $TRAIN_STEPS
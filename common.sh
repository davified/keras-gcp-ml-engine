#!/usr/bin/env bash

set -e

export PROJECT_ID=training-data-analyst-202307
export TRAIN_FILE=data/adult.data.csv
export EVAL_FILE=data/adult.test.csv
export JOB_DIR=census_keras
export REGION=us-central1

# training
export GCLOUD_JOB_DIR=gs://${PROJECT_ID}-keras-mlengine

# deployment (and prediction)
export MODEL_NAME=keras_model2
export VERSION_NAME=v1
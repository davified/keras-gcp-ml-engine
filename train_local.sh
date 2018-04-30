#!/usr/bin/env bash

set -e

source ./common.sh
TRAIN_STEPS=200

python -m trainer.task --train-files $TRAIN_FILE \
                       --eval-files $EVAL_FILE \
                       --job-dir $JOB_DIR \
                       --train-steps $TRAIN_STEPS
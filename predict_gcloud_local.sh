#!/usr/bin/env bash

set -e

source ./common.sh

gcloud ml-engine local predict --model-dir=$JOB_DIR/export \
                               --json-instances sample.json
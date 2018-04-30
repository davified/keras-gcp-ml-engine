#!/usr/bin/env bash

set -e

source ./common.sh

# TEST_JSON_DATA=./sample.json
# gcloud ml-engine predict --model ${MODEL_NAME} --version ${VERSION_NAME} --json-instances ${TEST_JSON_DATA}

curl --request POST \
  --url https://ml.googleapis.com/v1/projects/training-data-analyst-202307/models/keras_model2/versions/v1:predict \
  --header 'authorization: Bearer ya29.GlytBUGGGJGRkj5hYTuoeReVhZ0ReZ9R_o5EbdNojwlBTANTrp_8zq-kyDNcB9YSBeDxYoWsA-AsHZDq8SiR7vS26lZH22JlJmUTe9KNuiRsmAm3VrCq883KrHRTkg' \
  --header 'content-type: application/json' \
  --data '{
  "instances": [
		[39, 13, 2174, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1]
	]
}
'
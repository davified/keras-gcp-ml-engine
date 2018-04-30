# Predicting income with the Census Income Dataset using Keras

Source: https://github.com/GoogleCloudPlatform/cloudml-samples/tree/master/census/keras

This is the Open Source Keras version of the Census sample. The sample runs both as a
standalone Keras code and on Cloud ML Engine.

## Getting started

Run: `./setup.sh`

## Training

### Using local python

You can run the Keras code locally

`./train_local.sh`

### Training using gcloud local

`./train_local_gcloud.sh`

### Training using Cloud ML Engine

You can train the model on Cloud ML Engine: `./train_gcloud.sh`

## Prediction

### Prediction using gcloud local

You can run prediction on the SavedModel created from Keras HDF5 model

- Generate test data: `python preprocess.py sample.json`
- Run predict locally:
```
gcloud ml-engine local predict --model-dir=$JOB_DIR/export \
                               --json-instances sample.json
```

### Deployment to Cloud ML Engine

You can perform prediction on Cloud ML Engine by following the steps below.
1. Deploy model resource and create version: `./deploy.sh`
2. Generate test data for predictions: `python preprocess.py sample.json`
3. Get prediction: `./predict.sh`

## TODOs:
- upgrade to tensorflow 1.7.0 + remove dependency on keras


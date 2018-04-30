#!/usr/bin/env bash

set -e


echo "Installing gcloud CLI"
brew tap caskroom/cask
brew cask install google-cloud-sdk

echo "Creating virtual environment"
virtualenv census_keras

echo "Activating virtual environment"
source census_keras/bin/activate

echo "Installing dependencies"
pip install --upgrade -r requirements.txt

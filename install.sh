#!/bin/sh


FILE=.env
if [ ! -f "$FILE" ]; then
  echo 'Creating .env file...'
  cp .env.dev .env
else
  echo 'File already exist'
fi

yarn

# shellcheck disable=SC2164
cd api

FILE=.env
if [ ! -f "$FILE" ]; then
  echo 'Creating .env file...'
  cp .env.example .env
else
  echo 'File already exist'
fi

FILE=packages/marvel/stubs
if [ ! -h "$FILE" ]; then
  echo "Creating stubs..."
  cp -R packages/marvel/stubs-backup packages/marvel/stubs
fi


cd ../shop

FILE=.env
if [ ! -f "$FILE" ]; then
  echo 'Creating .env file...'
  cp .env.template .env
else
  echo 'File already exist'
fi


cd ../admin/rest

FILE=.env
if [ ! -f "$FILE" ]; then
  echo 'Creating .env file...'
  cp .env.template .env
else
  echo 'File already exist'
fi



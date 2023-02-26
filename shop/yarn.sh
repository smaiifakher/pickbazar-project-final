#!/bin/sh

echo "installing yarn"
yarn

echo "building project"
yarn build:rest

echo "starting project"
yarn start:rest



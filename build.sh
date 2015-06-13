#!/bin/bash
docker build -t withinboredom/ubuntu-base:latest ubuntu-base
docker tag -f ubuntu:14.04 withinboredom/ubuntu-base:base
#docker push withinboredom/ubuntu-base
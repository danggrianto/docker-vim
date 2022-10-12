#!/bin/bash

docker build --build-arg USER_ID=`whoami` -t danggrianto/docker-vim:latest .

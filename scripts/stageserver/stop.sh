#!/bin/bash

kill -TERM $(cat ./RUNNING_PID) && rm -f ./RUNNING_PID

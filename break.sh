#!/bin/bash
for i in `seq 1 40`;
do
       docker network create test$i
done
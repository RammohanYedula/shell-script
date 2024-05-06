#!/bin/bash

# this is called array, instead of single value it can hold multiple values
PERSONS=("Ram" "suresh"  "Mohan")

# INSIDE array we always refer values woth index and it start from 0

echo "First Person: ${PERSONS[0]}"


echo "First Person: ${PERSONS[@]}"
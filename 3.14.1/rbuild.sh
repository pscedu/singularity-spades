#!/bin/bash

IMAGE=singularity-SPAdes-3.14.1.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION

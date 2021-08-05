#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

set -x
singularity exec singularity-spades-3.15.3.sif spades-gmapper
singularity exec singularity-spades-3.15.3.sif spades.py
singularity exec singularity-spades-3.15.3.sif spades-gbuilder
singularity exec singularity-spades-3.15.3.sif spades-truseq-scfcorrection
singularity exec singularity-spades-3.15.3.sif spades-corrector-core
singularity exec singularity-spades-3.15.3.sif spades-bwa
singularity exec singularity-spades-3.15.3.sif plasmidspades.py
singularity exec singularity-spades-3.15.3.sif spades-core
singularity exec singularity-spades-3.15.3.sif rnaspades.py
singularity exec singularity-spades-3.15.3.sif spades-hammer
singularity exec singularity-spades-3.15.3.sif truspades.py
singularity exec singularity-spades-3.15.3.sif spades-ionhammer
singularity exec singularity-spades-3.15.3.sif metaplasmidspades.py
singularity exec singularity-spades-3.15.3.sif spades-kmercount
singularity exec singularity-spades-3.15.3.sif metaspades.py

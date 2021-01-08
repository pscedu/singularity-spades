#!/bin/bash

if ! [ -x "$(command -v singularity)" ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/spades%3A3.14.1--h2d02072_0
mv spades%3A3.14.1--h2d02072_0 singularity-SPAdes-3.14.1.sif

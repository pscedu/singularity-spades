#!/bin/bash

VERSION=3.15.4
PACKAGE=SPAdes
TOOL=spades.py
DIRECTORY=/opt/packages/$PACKAGE/$VERSION

PERSISTENT_FILE_STORAGE=/ocean
if [ -d $PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B $PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=$OPTIONS" -B /local"
fi

singularity exec -B $PERSISTENT_FILE_STORAGE $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"

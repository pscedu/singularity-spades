#!/bin/bash

TOOLS=(cds-mapping-stats     metaspades.py	  spades-bwa		       spades-gmapper	       spades-kmercount		    spaligner
cds-subgraphs	      metaviralspades.py  spades-convert-bin-to-fasta  spades-gsimplifier      spades-read-filter	    truspades.py
coronaspades.py       plasmidspades.py	  spades-core		       spades-hammer	       spades-truseq-scfcorrection
mag-improve	      rnaspades.py	  spades-corrector-core        spades-ionhammer        spades.py
metaplasmidspades.py  rnaviralspades.py   spades-gbuilder	       spades-kmer-estimating  spades_init.py)

cat << EOF > template
#!/bin/bash

VERSION=3.15.5
PACKAGE=SPAdes
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif $TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template

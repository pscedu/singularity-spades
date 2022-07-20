--
-- SPAdes 3.15.5 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines."
-- "Keywords: singularity bioinformatics"

whatis("Name: SPAdes")
whatis("Version: 3.15.5")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines.")

help([[
SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines.

To load the module, type

> module load SPAdes/3.15.5

To unload the module, type

> module unload SPAdes/3.15.5

Documentation
-------------
https://github.com/ablab/spades

Tools included in this module are

* cds-mapping-stats
* metaspades.py
* spades-bwa
* spades-gmapper
* spades-kmercount
* spaligner
* cds-subgraphs
* metaviralspades.py
* spades-convert-bin-to-fasta
* spades-gsimplifier
* spades-read-filter
* truspades.py
* coronaspades.py
* plasmidspades.py
* spades-core
* spades-hammer
* spades-truseq-scfcorrection
* mag-improve
* rnaspades.py
* spades-corrector-core
* spades-ionhammer
* spades.py
* metaplasmidspades.py
* rnaviralspades.py
* spades-gbuilder
* spades-kmer-estimating
* spades_init.py
]])

local package = "SPAdes"
local version = "3.15.5"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)

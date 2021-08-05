--
-- SPAdes 3.15.3 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines."
-- "Keywords: singularity bioinformatics"

whatis("Name: SPAdes")
whatis("Version: 3.15.3")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines.")

help([[
SPAdes – St. Petersburg genome assembler – is an assembly toolkit containing various assembly pipelines.

To load the module, type

> module load SPAdes/3.15.3

To unload the module, type

> module unload SPAdes/3.15.3

Documentation
-------------
https://github.com/ablab/spades

Repository
----------
https://github.com/ablab/spades

Tools included in this module are

* spades.py
* metaspades.py
* plasmidspades.py
* metaplasmidspades.py
* rnaspades.py
* truspades.py
* spades-core
* spades-gbuilder
* spades-gmapper
* spades-kmercount
* spades-hammer
* spades-ionhammer
* spades-bwa
* spades-corrector-core
* spades-truseq-scfcorrection 
]])

local package = "SPAdes"
local version = "3.15.3"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)

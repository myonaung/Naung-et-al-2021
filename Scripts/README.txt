Instruction


1. clean_fasta.sh remove minor clones and built proper folder for each gene of interest for downstream analyses.

2. removeNfromfas.py program is a python program depends on Biopython to remove ambiguous bases from resulting fasta file.

3.usage of removeNfromfas.py 
	python removeNfromfas.py input.fasta

4.fasta.sh seperate each gene into different geographical region based on MalariaGen v5 annotation. (using input from processed_metadata.txt)

This is working well in unix environment, but may require changes depending on OS you are using. 
#!/bin/bash
set -e
set -u
set -o pipefail

gene_info=genes.txt
sample_files=($(cut -b 1- "$gene_info")) 
echo ${sample_files[@]} | fmt -1 > processed_metadata.txt

for fasta_file in ${sample_files[@]}
do
    results_file="$(basename $fasta_file .fasta)_maj.fasta"   
    mkdir $results_file/
    #remove minor clones and create folder for further analysis
    awk '/^>/ {P=index($0,"_min")==0} {if(P) print} ' Genes/$fasta_file > $results_file/$results_file
done


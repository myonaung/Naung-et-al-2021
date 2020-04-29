#!/bin/bash
set -e
set -u
set -o pipefail

gene_info=processed_metadata.txt
gene_files=($(cut -b 1- "$gene_info")) 

for fasta_file in ${gene_files[@]}
do
    file_dir="$(basename $fasta_file .fasta)_maj.fasta"   
    file="$(basename $fasta_file .fasta)_maj_removed_N.fasta"
    file_out="$(basename $fasta_file .fasta)"
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PA/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Gambia_Guinea.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PD/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Thailand.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PF/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Ghana.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PH/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Cambodia.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PM/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Mali.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PN/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_PNG.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PR/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Bangladesh.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PT/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Malawi.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /PV/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Vietnam.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /QC/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Myanmar.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /QE/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Laos.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /QG/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_DrCongo.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /QJ/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Nigeria.fasta
    awk 'BEGIN{ RS = ">"; } { if ($0 ~ /Sen/) { printf ">"$0; } }' $file_dir/$file  > $file_dir/${file_out}_Senegal.fasta
done
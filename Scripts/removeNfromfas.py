import sys
from Bio import SeqIO
handle = open(sys.argv[1], "rU")
filtered = [record for record in SeqIO.parse(handle, "fasta") if record.seq.count('N') == 0] 
output_handle = open("removed_N.fasta", "w")
SeqIO.write(filtered, output_handle, "fasta")
output_handle.close()
handle.close()



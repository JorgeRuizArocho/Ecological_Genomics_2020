#!/bin/bash

cd ~/Ecological_Genomics_2020/myresults

mkdir fastqc 

for file in /data/project_data/RS_ExomeSeq/fastq/edge_fastq/WA*fastq.gz

do

fastqc ${file} -o fastqc/ 

done
 



#!/bin/bash

cd ~/Ecological_Genomics_2020/myresults
 
for file in /data/project_data/RS_RNASeq/fastq/cleanreads/KAN*D*.cl.fq

do

fastqc ${file} -o fastqc/ 

done

for file in /data/project_data/RS_RNASeq/fastq/cleanreads/KAN*H*.cl.fq 

do 

fastqc ${file} -o fastqc/

done
 


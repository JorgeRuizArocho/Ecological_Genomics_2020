#!/bin/bash

cd /data/project_data/RS_RNASeq/fastq/cleanreads

for file in KAN_04_D*R1.cl.fq
  
  do 

echo "starting sample ${file}"
salmon quant -i /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_cds_index -l A -r ${file} --validateMappings -o /data/project_data/RS_RNASeq/salmon/allmapping/${file}

done

for file in KAN_04_H*R1.cl.fq
  
  do 
 
salmon quant -i /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_cds_index -l A -r ${file} --validateMappings -o /data/project_data/RS_RNASeq/salmon/allmapping/${file}

done

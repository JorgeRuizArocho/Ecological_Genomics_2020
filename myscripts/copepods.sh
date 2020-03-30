#!/bin/bash

bismark --bowtie2 --multicore 1 \
--genome /data/project_data/epigenetics/reference_genome \
--output_dir /data/project_data/epigenetics/aligned_output \
-1 /data/project_data/epigenetics/trimmed_fastq/HA_F25_2_1.fq.gz \
-2 /data/project_data/epigenetics/trimmed_fastq/HA_F25_2_2.fq.gz \
--rg_tag --rg_id SAMPLEID --rg_sample SAMPLEID --gzip --local --maxins 1000

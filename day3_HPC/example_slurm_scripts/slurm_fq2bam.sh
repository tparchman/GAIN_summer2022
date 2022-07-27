#!/bin/bash

#SBATCH --job-name=fq2vcf
#SBATCH --account=cpu-s5-denovo-0
#SBATCH --partition=cpu-core-0
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=4G
#SBATCH --time=14-00:00:00
#SBATCH --array=[0-323]
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joshua.hallas@gmail.com
#SBATCH --error=/data/gpfs/assoc/denovo/jhallas/frogs/scripts/out_fq2vcf/%x_%A_%a.err
#SBATCH --output=/data/gpfs/assoc/denovo/jhallas/frogs/scripts/out_fq2vcf/%x_%A_%a.out

####### LOAD SOFTWARE #######
source activate py36

####### MAKE OUTPUT DIRECTORY #######
mkdir -p /data/gpfs/assoc/denovo/jhallas/frogs/sorted_bam

####### DIRECTORY PATHS #######
REF=/data/gpfs/assoc/denovo/jhallas/frogs/ref_genome/frog_denovo_ref
FQDIR=/data/gpfs/assoc/denovo/jhallas/frogs/split_fastq
BAMDIR=/data/gpfs/assoc/denovo/jhallas/frogs/sorted_bam

####### CREATES JOB ARRAY #######
ID=($(find $FQDIR -name "*.fastq.gz" | sed 's/.fastq.gz//g'| sort | rev | cut -d "/" -f 1 | rev))
ID1=${ID[$SLURM_ARRAY_TASK_ID]}

###### ALIGNMENT ######
bwa mem -t 16 -R '@RG\tID:$ID1\tSM:$ID1' $REF $FQDIR/$ID1.fastq.gz > $BAMDIR/$ID1.sam
samtools view -@ 16 -b $BAMDIR/$ID1.sam -o $BAMDIR/$ID1.bam
samtools sort -@ 16 $BAMDIR/$ID1.bam -o $BAMDIR/$ID1.sorted.bam
samtools index -@ 16 $BAMDIR/$ID1.sorted.bam
rm $BAMDIR/$ID1.sam
rm $BAMDIR/$ID1.bam














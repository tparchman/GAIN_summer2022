#!/usr/bin/env bash
#SBATCH --account=cpu-s5-denovo-0
#SBATCH --partition=cpu-core-0
#SBATCH --time=1-00:00:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem-per-cpu=1000
#SBATCH --job-name slurm_ex
#SBATCH --output output_slurm_ex.txt
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=tfaske@nevada.unr.edu

#### code to make 5 files with different text ####

# make output dir
mkdir output

# file 1 
echo 'starting file 1 ....'
echo 'this is file one' > output/file1.txt

# file 1
echo 'starting file 2 ....'
echo 'this is file two'	> output/file2.txt

# file 3
echo 'starting file 3 ....'
echo 'this is file three' > output/file3.txt

# file 4
echo 'starting file 4 ....'
echo 'this is file four' > output/file4.txt

# file 5
echo 'starting file 5 ....'
echo 'this is file five' > output/file5.txt 

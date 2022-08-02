# General notes on pronghorn usage

## logging into pronghorn

Connecting to pronghorn is most usefully accomplished using `ssh`:

    $ ssh username@pronghorn.rc.unr.edu

Upon logging in, password will be requested. Keep in mind that as you type, no cursor will move or appear.

## Where to work on pronghorn

Upon login, you will find yourself in your home directory in the login-1 node, for example:

    /data/gpfs/home/tparchman

Research groups may also have directories established in association directories, for example:

    /data/gpfs/assoc/parchmanlab/

Data can be transferred to and from here, and slurm scripts can be submitted from here.

## Transferring files to and from pronghorn
 
Files can be most easily moved to or from any location on pronghorn using `scp`, `rsync`, or in special cases`sftp`.

Copy a file(s) from pronghorn to current directory on local machine

    $ scp tparchman@pronghorn.rc.unr.edu:/data/gpfs/assoc/parchmanlab/parchman/*py .

Copy a file(s) from local machine to pronghorn

    $ scp data_from_curvirostra.vcf tparchman@pronghorn.rc.unr.edu:/data/gpfs/assoc/parchmanlab/parchman/

Copy a directory from local device to pronghorn:

    $ rsync -av muricata_fastqs tparchman@pronghorn.rc.unr.edu:/data/gpfs/assoc/parchmanlab/parchman/

Copy a directory from pronghorn to local device:

    $ rsync -av muricata_fastqs tparchman@pronghorn.rc.unr.edu:/data/gpfs/assoc/parchmanlab/parchman/

## Containers or environments for managing software on pronghorn

Pronghorn users do not have permissions to install and compile software at the system level, and due to the large number of users, the system engineers do not fill requests to install software for individual users. This responsibility is yours.Containers or environments can easily be used on pronghorn to install and run user specific software. Using such tools means that you can install the software you need to run, that you control your own portable environment, and that individual users do not have to install software more generally at the system. 

In the parchman lab we have been using `anaconda` environments for this. Other options include `Apptainer` containers, which are recommended by the pronghorn system engineering team.

Detailed instructions for installing and using `Apptainer` containers can be found at this [Apptainer website](https://apptainer.org/docs/).

### Installing `anaconda` on pronghorn

Using `anaconda` will allow you to install all of the programs you need on pronghorn. Build within user-specific directory, e.g.: 
    
    /data/gpfs/assoc/parchmanlab/parchman/
	
    $ wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
    
    $ bash Anaconda3-2020.11-Linux-x86_64.sh 

It will make the most sense to put anaconda3 in the directory that serves as your main working directory.

    $ rm Anaconda3-2019.10-Linux-x86_64.sh

To activate conda either logout/log back in or:

    $ source .bashrc

### Create your main working environment and add some channels

    $ conda create -n py38 python=3.8

%describe `channels`

    $ conda config --add channels bioconda
    $ conda config --add channels conda-forge
    $ conda config --add channels defaults
    $ conda config --add channels r

NOTE: may need to modify .condarc in order to move conda-forge and bioconda to top of list

### activating and deactivating environment

%need a few sentences describing [base], how to deactivate out of base, how to activate back into base, the difference between base and your environment.

%warnings about installing in base, and why you dont want to do that.

To activate your environment, use

    $ conda activate py38

To deactivate an active environment, use

    $ conda deactivate

Note, if you deactivate after activating your named environment, you can deactivate out of base using the same command.

### conda software installs

Paragraph about considerations before choosing which version of what to install.

To figure out which channel and which version of a given software you want to install, it is generally best to google what you are looking for to see what is available and what channel you want to use.

Below will install the most current version of bwa available from `bioconda`

    $ conda install -c bioconda bwa
    $ conda install -c bioconda samtools=1.10
    $ conda install -c bioconda bcftools=1.10
    $ conda install -c bioconda vcftools

### conda software uninstalls

    $ conda uninstall packagename

## removing anaconda environment

    $ conda install anaconda-clean
    $ anaconda-clean --yes

### Building additional environments to keep dependencies clean

 You will likely want to build different conda environments for different software installs to keep dependencies clean. `Ipyrad` is an example of where we have built separate environments.

 ## SLURM + HPC
Slurm is an open source, fault-tolerant, and highly scalable cluster management and job scheduling system for large and small Linux clusters. Slurm requires no kernel modifications for its operation and is relatively self-contained. As a cluster workload manager, Slurm has three key functions. First, it allocates exclusive and/or non-exclusive access to resources (compute nodes) to users for some duration of time so they can perform work. Second, it provides a framework for starting, executing, and monitoring work (normally a parallel job) on the set of allocated nodes. Finally, it arbitrates contention for resources by managing a queue of pending work.  Web resources: [Slurm website](https://slurm.schedmd.com/overview.html) and [quick cheat sheet](https://slurm.schedmd.com/pdfs/summary.pdf)

*IMPORTANT: always know how much memory and CPUs are avaiable for HPC in order to optimize analyses.* 

**The BioNRES node 68 has:**
* 192 GB physical memory. 
  * However, 24 GB are reserved for processes, which means there is roughly 5GB per core.
  * Allocation of memory is important for BioNRES becuase if a user is running a job with 16 cores but uses all the memory than the other 16 cores cannot be used by another user.
* 32 cores / 64 threads
  * We can use threading on BioNRES but can't use MPI because the account only allows use of one node.  This is dependant upon how you allocate resources. (i.e. `--ntasks` and `--cpus-per-task`).  In addition, `--hint=compute_bound` allows only one thread per cpu.  With this option enabled only 32 threads can be activated.  To run more than 32 threads don't include `--hint=compute_bound`.  The benefit of `--hint=compute_bound` is that it doesn't allow another job to use a thread on a CPU currently being used, which can slow an analysis.  Or at least that is what I understand from Sebastian.  

  **It is might be best to check allocation of resources with John Anderson before submitting a job.**

    *   Thread Example:
        ```
        #SBATCH --ntasks 1
        #SBATCH --cpus-per-task 32
        ```
    *   MPI Example:
         ```
        #SBATCH --ntasks 64
        #SBATCH --cpus-per-task 1
        ```
## Anatomy of a `slurm` wrapper

`slurm` submission files are bash scripts that:

* specify computational resources and time needed to run a batch of jobs
* load necessary software modules
* specify the commands to run, specifying input and output locations.

  
*Example of Slurm resource allocation submission file.*
```
#!/usr/bin/env bash
#SBATCH --account=cpu-s1-bionres-0
#SBATCH --partition=cpu-s1-bionres-0
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=END
#SBATCH --mail-user=
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --hint=compute_bound
#SBATCH --mem-per-cpu=2400
#SBATCH --job-name=
#SBATCH --output=
```
## executing `slurm` wrapper

    $ sbatch bwa_batch.sh

Common Slurm Commands
<!-- Tables -->
| Description  | Command |
| -------------------|-------------------|
| Run analysis | sbatch [file name] |
| Pulls job ids | squeue -u [account name] |
| Check status  info on cpus | scontrol show job -d [job id] |
| Kill job | scancel [job id] |
| Check CPU load and memory  | sinfo --nodes=cpu-[number] --Format="CPUsLoad,FreeMem"|


 
 ## running jobs through the queue on pronghorn using `slurm`
 
 ### different resources for parchman lab on pronghorn, both free and not so free
 

 ### monitoring your jobs
 To check status after job is started

    $ squeue -u tparchman

To check status with info on cpus

    $ scontrol show job -d <JOBID>

To kill job:

    $ scancel <JOBID>

 
 ### some things NOT to do on pronghorn (personal accounts of fuck-ups)



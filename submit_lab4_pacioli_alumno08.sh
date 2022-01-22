#!/bin/bash 

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08/lab4 
#SBATCH -J lab4_alumno08
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=END
#SBATCH --mail-user=carmen.gonzalez1@um.es


export KMP_AFFINITY=granularity=fine,compact 

export OMP_NUM_THREADS=32 
 


# mando a pacioli  FileCute.sh  en paralelo usando 4 procesos para los cuatro ficheros
./file-cut.sh Sample1.fastq & ./file-cut.sh Sample2.fastq & ./file-cut.sh Sample3.fastq & ./file-cut.sh Sample4.fastq

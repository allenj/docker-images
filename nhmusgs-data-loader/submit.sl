#!/bin/bash
#SBATCH -N 1
#SBATCH -A wbeep
#SBATCH -t 1-0:00
#SBATCH -o data-loader.%j.out
#SBATCH --image=nhmusgs/data-loader:latest

srun -n 1 shifter --volume=/caldera/projects/usgs/water/impd/nhm:$NHM_DATA_DIR /usr/local/bin/data-loader

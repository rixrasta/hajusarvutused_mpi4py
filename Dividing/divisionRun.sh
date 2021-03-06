#!/bin/bash

#SBATCH -J division
#SBATCH -n 5
#SBATCH --time=00:10:00
#SBATCH -p testing
module purge
module load openmpi-1.7.3
module load python-2.7.3

# Kausta nimi
export MPI4PYDIR=paralleelarvutused

# Pythoni wrapperi asukoht
export PYTHONPATH=$HOME/$MPI4PYDIR/install/lib/python

# Jooksutame kasutades mpi'd.
mpirun python division.py

#!/bin/bash -l\
#$ -S /bin/bash\
#$ -l h_rt=20:0:0\
#$ -l mem=1G\
#$ -l tmpfs=10G\
#$ -N Rep1_B1AR_TM1TM1_martini_EN_ensemble\
#$ -pe mpi 4\
#$ -wd /home/zcbth02/Scratch/ensemble_run1/B1AR_TM1TM1_ensemble/martini_EN/Rep1/\
module load gromacs/2018.3/intel-2018\
gmx grompp -f ../Common/md.mdp -c ../Common/TM1_npt.gro -t ../Common/TM1_npt.cpt -p ../Common/system.top -n ../Common/index.ndx -o TM1TM1_md.tpr\
gerun mdrun_mpi -deffnm TM1TM1_md}

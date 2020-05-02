{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs28 \cf2 \CocoaLigature0 #!/bin/bash -l\
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
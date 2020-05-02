{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs28 \cf0 \CocoaLigature0 #!/bin/bash\
\
for ((i = 2; i<=50; i++))\
do\
cp MD_ensemble_Rep1.sh MD_ensemble_Rep$i.sh\
ex -sc '%s/Rep1/Rep'$(($i))'/g|x' MD_ensemble_Rep$i.sh\
done}
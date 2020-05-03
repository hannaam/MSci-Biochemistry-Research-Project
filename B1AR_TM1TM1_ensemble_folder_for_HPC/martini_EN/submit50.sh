for ((i = 2; i<=50; i++))\
do\
cp MD_ensemble_Rep1.sh MD_ensemble_Rep$i.sh\
ex -sc '%s/Rep1/Rep'$(($i))'/g|x' MD_ensemble_Rep$i.sh\
done}

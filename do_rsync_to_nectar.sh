#!/bin/bash
basename=$'ISOMIP_PLUS_OceanCold'

#array=( 5.00e-2)
array=(  1.00e-3 1.00e-2 2.00e-2 3.00e-2 4.00e-2 5.00e-2 6.00e-2 7.00e-2 8.00e-2 9.00e-2 1.00e-1 1.10e-1 1.20e-1 1.50e-1 2.00e-1)

Narray=( 6 11 41)
for NVal in "${Narray[@]}"
do
for GammaVal in "${array[@]}"
do
echo "${GammaVal}"
cd /short/nk1/deg581/${basename}_N${NVal}_${GammaVal}

rsync -avz --progress /short/nk1/deg581/${basename}_N${NVal}_${GammaVal}/ocean_his_${basename}_N${NVal}_${GammaVal}.nc ubuntu@144.6.229.54:/mnt/IceOceanVolume/ISOMIP_PLUS_VertResStudy/ana/Cold/

done
done





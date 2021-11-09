#!/bin/bash

filename='heep_runlist.txt' 
for run in $(cat $filename); do
    #CMD="./hcana -q \"DEUTERON_ANALYSIS/SCRIPTS/COIN/replay_production_coin_pElec_hProt.C(${run}, -1)\""   
    CMD="./hcana -q \"UTIL_PION/scripts/replay/replay_production_coin_cyero.C(${run}, 100000, \\\"checkCalib_cyero\\\")\""
    echo ${CMD}
eval ${CMD}

#echo "**********************************************"
#echo "level 0"
#echo "**********************************************"
#echo
#echo
#eval "echo $ROOTSYS"

#echo "**********************************************"
#echo "level 1"
#echo "**********************************************"
#source /site/12gev_phys/softenv.sh 2.3
    
#eval "echo $ROOTSYS"

#eval ${CMD2}

#echo "**********************************************"
#echo "Finished!"

done

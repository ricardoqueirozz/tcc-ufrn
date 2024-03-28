#!/bin/bash
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
module load softwares/pacotao
mkdir -p /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe/JOB19/Sim_17
cp -f run_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_intel-256_dataRateBe_JOB19_Sim_17.sh /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe
cp -f NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2.yaml /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe
cd '/home/rqdfhsilva/ns-3-dev/'
sleep $((11 + RANDOM % 50))
srun -N 1 -n 1 ./ns3 run 'nr-v2x-west-to-east-highway --RngRun=1719759664849923 --simTag=V2X_TCC_Campaign_1_Fase_2 --logging=0 --numVehiclesPerLane=50 --numLanes=3 --interVehicleDist=78 --interLaneDist=4 --speed=38.88889 --enableOneTxPerLane=0 --useIPv6=0 --packetSizeBe=300 --dataRateBe=24 --simTime=10 --slBearerActivationTime=2 --centralFrequencyBandSl=5.89e9 --bandwidthBandSl=100 --txPower=23 --numerologyBwpSl=2 --slSensingWindow=100 --slSelectionWindow=5 --slSubchannelSize=10 --slMaxNumPerReserve=2 --slProbResourceKeep=0 --slMaxTxTransNumPssch=2 --ReservationPeriod=100 --enableSensing=1 --t1=2 --t2=65 --slThresPsschRsrp=-128 --enableChannelRandomness=0 --channelUpdatePeriod=500 --mcs=0 --awarenessRange=200 --UlMode=1 --outputDir='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe/JOB19/Sim_17' --outputDir2='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe/JOB19' --mcs=17 --dataRateBe=24' --cwd='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe/JOB19/Sim_17' > /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_Campaign_1_Fase_2_dataRateBe/JOB19/Sim_17.out 2>&1

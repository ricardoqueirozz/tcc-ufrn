#!/bin/bash
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
module load softwares/pacotao
mkdir -p /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe/JOB5/Sim_2
cp -f run_NrV2X_SimPerScriptCampaign_MCS_intel-256_dataRateBe_JOB5_Sim_2.sh /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe
cp -f NrV2X_SimPerScriptCampaign_MCS.yaml /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe
cd '/home/rqdfhsilva/ns-3-dev/'
sleep $((11 + RANDOM % 50))
srun -N 1 -n 1 ./ns3 run 'nr-v2x-west-to-east-highway --RngRun=591333181093776 --simTag=V2X_MCS_Benchmark --logging=0 --numVehiclesPerLane=50 --numLanes=3 --interVehicleDist=78 --interLaneDist=4 --speed=38.88889 --enableOneTxPerLane=0 --useIPv6=0 --packetSizeBe=300 --dataRateBe=24 --simTime=10 --slBearerActivationTime=2 --centralFrequencyBandSl=5.89e9 --bandwidthBandSl=100 --txPower=23 --numerologyBwpSl=0 --slSensingWindow=100 --slSelectionWindow=5 --slSubchannelSize=10 --slMaxNumPerReserve=3 --slProbResourceKeep=0 --slMaxTxTransNumPssch=5 --ReservationPeriod=100 --enableSensing=1 --t1=2 --t2=33 --slThresPsschRsrp=-128 --enableChannelRandomness=0 --channelUpdatePeriod=500 --UlMode=1 --mcs=4 --outputDir='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe/JOB5/Sim_2' --outputDir2='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe/JOB5' --mcs=14 --dataRateBe=24' --cwd='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe/JOB5/Sim_2' > /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_MCS_dataRateBe/JOB5/Sim_2.out 2>&1

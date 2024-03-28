#!/bin/bash
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
module load softwares/pacotao
mkdir -p /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe/JOB14/Sim_1
cp -f run_NrV2X_SimPerScriptCampaign_nPSSCH_intel-256_dataRateBe_JOB14_Sim_1.sh /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe
cp -f NrV2X_SimPerScriptCampaign_nPSSCH.yaml /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe
cd '/home/rqdfhsilva/ns-3-dev/'
sleep $((11 + RANDOM % 50))
srun -N 1 -n 1 ./ns3 run 'nr-v2x-west-to-east-highway --RngRun=757660913337290 --simTag=V2X_nPSSCH_Benchmark --logging=0 --numVehiclesPerLane=50 --numLanes=3 --interVehicleDist=78 --interLaneDist=4 --speed=38.88889 --enableOneTxPerLane=0 --useIPv6=0 --packetSizeBe=300 --dataRateBe=24 --simTime=10 --slBearerActivationTime=2 --centralFrequencyBandSl=5.89e9 --bandwidthBandSl=100 --txPower=23 --numerologyBwpSl=0 --slSensingWindow=100 --slSelectionWindow=5 --slSubchannelSize=10 --slMaxNumPerReserve=3 --slProbResourceKeep=0 --slMaxTxTransNumPssch=2 --ReservationPeriod=100 --enableSensing=1 --t1=2 --t2=33 --slThresPsschRsrp=-128 --enableChannelRandomness=0 --channelUpdatePeriod=500 --UlMode=1 --mcs=14 --outputDir='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe/JOB14/Sim_1' --outputDir2='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe/JOB14' --slMaxTxTransNumPssch=5 --dataRateBe=24' --cwd='/home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe/JOB14/Sim_1' > /home/rqdfhsilva/ns-3-dev/results_intel-256_NrV2X_SimPerScriptCampaign_nPSSCH_dataRateBe/JOB14/Sim_1.out 2>&1

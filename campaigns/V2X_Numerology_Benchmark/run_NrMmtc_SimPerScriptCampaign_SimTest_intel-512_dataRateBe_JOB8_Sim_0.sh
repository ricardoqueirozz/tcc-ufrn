#!/bin/bash
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
module load softwares/pacotao
mkdir -p /home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe/JOB8/Sim_0
cp -f run_NrMmtc_SimPerScriptCampaign_SimTest_intel-512_dataRateBe_JOB8_Sim_0.sh /home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe
cp -f NrMmtc_SimPerScriptCampaign_SimTest.yaml /home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe
cd '/home/rqdfhsilva/ns-3-dev/'
sleep $((11 + RANDOM % 50))
srun -N 1 -n 1 ./ns3 run 'nr-v2x-west-to-east-highway --RngRun=1560540447446628 --logging=0 --numVehiclesPerLane=50 --numLanes=3 --interVehicleDist=78 --interLaneDist=4 --speed=38.88889 --enableOneTxPerLane=0 --useIPv6=0 --packetSizeBe=300 --dataRateBe=24 --simTime=10 --slBearerActivationTime=2 --centralFrequencyBandSl=5.89e9 --bandwidthBandSl=100 --txPower=23 --numerologyBwpSl=0 --slSensingWindow=100 --slSelectionWindow=5 --slSubchannelSize=10 --slMaxNumPerReserve=3 --slProbResourceKeep=0 --slMaxTxTransNumPssch=5 --ReservationPeriod=100 --enableSensing=1 --t1=2 --t2=33 --slThresPsschRsrp=-128 --enableChannelRandomness=0 --channelUpdatePeriod=500 --mcs=14 --outputDir='/home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe/JOB8/Sim_0' --outputDir2='/home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe/JOB8' --numerologyBwpSl=0 --dataRateBe=24' --cwd='/home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe/JOB8/Sim_0' > /home/rqdfhsilva/ns-3-dev/results_intel-512_NrMmtc_SimPerScriptCampaign_SimTest_dataRateBe/JOB8/Sim_0.out 2>&1

#!/bin/bash
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
module load softwares/gsrc/2020_05
mkdir -p /home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe/JOB5/Sim_2
cp -f run_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_cluster_dataRateBe_JOB5_Sim_2.sh /home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe
cp -f NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2.yaml /home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe
cd '/home/rqdfhsilva/ns-3-dev-old/'
sleep $((11 + RANDOM % 50))
srun -N 1 -n 1 ./waf --cwd='/home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe/JOB5/Sim_2' --run 'nr-v2x-west-to-east-highway --RngRun=591333181093776 --simTag=V2X_Numerology_Benchmark_2 --logging=0 --numVehiclesPerLane=50 --numLanes=3 --interVehicleDist=78 --interLaneDist=4 --speed=38.88889 --enableOneTxPerLane=0 --useIPv6=0 --packetSizeBe=300 --dataRateBe=24 --simTime=10 --slBearerActivationTime=2 --centralFrequencyBandSl=5.89e9 --bandwidthBandSl=100 --txPower=23 --numerologyBwpSl=0 --slSensingWindow=100 --slSelectionWindow=5 --slSubchannelSize=10 --slMaxNumPerReserve=3 --slProbResourceKeep=0 --slMaxTxTransNumPssch=5 --ReservationPeriod=100 --enableSensing=1 --t1=2 --t2=33 --slThresPsschRsrp=-128 --enableChannelRandomness=0 --channelUpdatePeriod=500 --UlMode=1 --mcs=14 --outputDir='/home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe/JOB5/Sim_2' --outputDir2='/home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe/JOB5' --numerologyBwpSl=2 --dataRateBe=24' > /home/rqdfhsilva/ns-3-dev-old/results_cluster_NrMmtc_SimPerScriptCampaign_V2X_Numerology_Benchmark_2_dataRateBe/JOB5/Sim_2.out 2>&1

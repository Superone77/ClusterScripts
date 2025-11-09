#To see, which of these GPUs are currently available:
condor_status  -constraint 'PartitionableSlot && Gpus > 0' -af:h Machine TotalGpus GPUs CUDADeviceName Cpus Memory/1024

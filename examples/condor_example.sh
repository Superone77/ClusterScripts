LOGS_DIR=/fast/najroldi/logs/ssm
executable=/home/najroldi/cluster101/run.sh

# Optional args (will be passed to the executable)
arg_1 = code/config.yaml
arg_2 = 1.0
arguments = $(arg_1) $(arg_2)

# Logs 
# (remember to create the directory paths, including err/ out/ log/, before launching the job)
error = $(LOGS_DIR)/err/job.$(Cluster).$(Process).err
output = $(LOGS_DIR)/out/job.$(Cluster).$(Process).out
log = $(LOGS_DIR)/log/job.$(Cluster).$(Process).log

# Specs
request_memory = 100000
request_cpus = 4
request_gpus = 1
requirements = (TARGET.CUDADeviceName == "NVIDIA A100-SXM4-80GB")

n_jobs = 1
queue $(n_jobs)
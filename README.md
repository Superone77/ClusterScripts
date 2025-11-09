# ClusterScripts

Get a CPU: `condor_submit_bid 25 -i -append request_cpus=2 -append request_memory=10000`

Get a GPU: `condor_submit_bid 25 -i -append request_cpus=2 -append request_gpus=1 -append request_memory=4096`

Get an A100: `condor_submit_bid 25 -i -append request_gpus=1 -append "requirements=TARGET.CUDACapability == 8.0"`

Get an H100: `condor_submit_bid 25 -i -append request_gpus=1 -append "requirements=TARGET.CUDACapability == 9.0"`

Get a GPU by name: `condor_submit_bid 25 -i -append request_gpus=1 -append "requirements=TARGET.CUDADeviceName==\"NVIDIA A100-SXM4-80GB\""`
#!/bin/bash
source ~/miniforge3/etc/profile.d/conda.sh # equivalent to conda init
conda activate my_env

# optionally parse args
arg_1=$1
arg_2=$2

# execute python script
python example.py --arg_1=$arg_1 --arg_2=$arg_2
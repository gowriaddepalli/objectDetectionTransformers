#!/bin/bash

#SBATCH --job-name=sga
#SBATCH --nodes=1
#SBATCH --gres=gpu:p40:1
#SBATCH --mem=50GB
#SBATCH --time=15:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --mail-type=END
#SBATCH --cpus-per-task=4
#SBATCH --mail-user=sga297@nyu.edu
#SBATCH --output=gowri.out
. ~/.bashrc
module purge:q!
module load cudnn/9.0v7.0.5  
module load cuda/9.0.176
module load anaconda3/5.3.1
. /share/apps/anaconda3/5.3.1/etc/profile.d/conda.sh

source /scratch/sga297/pyenv1/py3.7.3/bin/activate

## Please don't modify the part after this line

port=$(shuf -i 6000-9999 -n 1)

/usr/bin/ssh -N -f -R $port:localhost:$port log-0
/usr/bin/ssh -N -f -R $port:localhost:$port log-1

cat<<EOF

Jupyter server is running on: $(hostname)
Job starts at: $(date)

Step 1 :

If you are working in NYU campus, please open an iTerm window, run command

ssh -L $port:localhost:$port $USER@prince.hpc.nyu.edu

If you are working off campus, you should already have ssh tunneling setup through HPC bastion host, 
that you can directly login to prince with command

ssh $USER@prince

Please open an iTerm window, run command

ssh -L $port:localhost:$port $USER@prince

Step 2:

Keep the iTerm windows in the previouse step open. Now open browser, find the line with

The Jupyter Notebook is running at: $(hostname)

the URL is something: http://localhost:${port}/?token=XXXXXXXX (see your token below)

you should be able to connect to jupyter notebook running remotly on prince compute node with above url

EOF

unset XDG_RUNTIME_DIR
if [ "$SLURM_JOBTMP" != "" ]; then
    export XDG_RUNTIME_DIR=$SLURM_JOBTMP
fi

jupyter notebook --no-browser --port $port --notebook-dir=$(pwd)





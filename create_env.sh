#!/bin/bash

echo "input your conda dir:"
read condaDir

conda create -n diffcsp2 python=3.8.13 -y
conda activate diffcsp2
conda install mamba -y
mamba install pyxtal==0.6.0 -y
pip install setuptools==59.5.0
pip install torch_geometric==2.5.3 pytorch-lightning==1.3.8
pip install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html
pip install torch-scatter==2.0.7 torch-sparse==0.6.10 torch-cluster==1.5.9 torch-spline-conv==1.2.1 torch_geometric==2.5.3 hydra-core==1.1.0 p-tqdm==1.3.3
pip install pymatgen==2023.8.10 torchmetrics==0.5.0 wandb==0.10.33 einops
pip install protobuf==3.20.*
export LD_LIBRARY_PATH="$condaDir/lib:$LD_LIBRARY_PATH"
echo "$condaDir/lib:$LD_LIBRARY_PATH"
echo "Setup complete."
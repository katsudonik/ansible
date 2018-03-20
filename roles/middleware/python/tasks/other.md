```
sudo yum -y install git zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
pyenv versions
pyenv install -l | grep anaconda
pyenv install anaconda3-5.1.0
export PATH=/home/erc-admin/.pyenv/versions/anaconda3-5.1.0/bin:$PATH
pyenv rehash
pyenv global anaconda3-5.1.0
python --version
pip install tensorflow
pip install keras
```
Illegal instruction: Lack of cpu capacity

keras uses tensorflow on backend by default.

cuDNN  
use cuDNN = enable runnung tensorflow-gpu
http://tecsingularity.com/cuda/cudnn/  
http://blog.amedama.jp/entry/2017/02/26/120215

The NVIDIA CUDA® Deep Neural Network library (cuDNN): deeplearning library  
-> require NVIDIA graphic card support CUDA (GPU Compute Capability >= 3.0)

gpu acceralated learning requires tensorflow-gpu.  
tensorflow-gpu requires CUDA?  
CUDA requires NVIDIA GPU

if GPU is usable, keras uses GPU by default.
https://keras.io/ja/getting-started/faq/#kerasgpu

check usable of GPU  
https://stackoverflow.com/questions/45662253/can-i-run-keras-model-on-gpu  
```
from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

from keras import backend as K
K.tensorflow_backend._get_available_gpus()
```

aws p2/p3/g3 instance using NVIDIA GPU  
https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/accelerated-computing-instances.html

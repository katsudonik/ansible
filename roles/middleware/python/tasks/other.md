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

keras uses tensorflow on backend by default.

The NVIDIA CUDA® Deep Neural Network library (cuDNN): deeplearning library  
-> require support CUDA NVIDIA graphic card

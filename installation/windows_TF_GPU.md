# Install TensorFlow for GPU on Windows 

1. Install Visual Studio **2015** Community Edition from https://my.visualstudio.com (requires registering a free account). Make sure "Visual C++" is checked.
2. Install [CUDA 8](https://developer.nvidia.com/cuda-downloads).
3. Download [cuDNN](https://developer.nvidia.com/rdp/cudnn-download) v5.1, which **isn't** the latest version, and unzip its contents to where you installed CUDA.
4. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
5. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
6. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/gpu/tensorflow_gpu-1.2.1-cp35-cp35m-win_amd64.whl`.

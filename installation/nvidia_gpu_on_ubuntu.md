This document of **rough notes** follows `slavv`'s outstanding Deep Learning box [Medium post](https://blog.slavv.com/the-1700-great-deep-learning-box-assembly-setup-and-benchmarks-148c5ebe6415). 

### Install CUDA

* get file on machine from `https://developer.nvidia.com/cuda-downloads`, e.g., with `wget` or `sftp`

```
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb
```

* then follow `slavv`
* didn't need to install latest Nvidia drivers; saw `GeForce GTX 108...` as name

### Install cuDNN

* as of August 1st, 2017, TensorFlow (1.3) supports cuDNN 6.0 but doesn't [make much use of it](https://github.com/tensorflow/tensorflow/issues/8828), so I followed `slavv`'s recommendation to install cuDNN 5.1 (for CUDA 8.0) from the [NVIDIA Developer site](https://developer.nvidia.com/rdp/cudnn-download) (requires creating a developer account)
* follow `slavv` cuDNN instructions


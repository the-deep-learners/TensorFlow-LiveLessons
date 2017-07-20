# Installation

Installation will be easiest if you have some familiarity with the Unix command line; tutorial of the fundamentals [here](https://learnpythonthehardway.org/book/appendixa.html). 

In addition, if you're unfamiliar with using Python for data analysis (e.g., the pandas, scikit-learn, matplotlib packages), the [data analyst path of DataQuest](https://www.dataquest.io/path/data-analyst) will quickly get you up to speed -- steps one (Introduction to Python) and two (Intermediate Python and Pandas) provide the bulk of the essentials. 

## On a Unix-based machine (including Mac OS X) 

If you are using a Unix-based machine (including Mac OS X), and either...

1. you are missing dependencies (provided in this repository's [Dockerfile](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/Dockerfile), which is essentially the [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) plus tensorflow, tflearn, and keras), or
2. **you generally find this entire installation page confusing**

...then follow the [step-by-step installation instructions](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md) for Mac OS X. I have a strong suspicion that if you are using another Unix-based operating system, then you are the kind of person who will have little difficulty adapting the instructions to your machine. 

## On a Unix-based machine (including Mac OS X) where you already have the dependencies

If you already familiar with `git` and have the dependencies (described above) configured as you like them, then you can simply `git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`. 

## On a Windows machine

These steps are for users who installed the [Anaconda](https://www.continuum.io/downloads) Python 3 distribution, but other such distributions, e.g. [WinPython](https://winpython.github.io/), [Canopy](https://store.enthought.com/downloads/) should work, too.

### Install TensorFlow for CPU
1. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
2. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
3. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.2.1-cp35-cp35m-win_amd64.whl`.

### Install TensorFlow for GPU
1. Install Visual Studio **2015** Community Edition from https://my.visualstudio.com (requires registering a free account). Make sure "Visual C++" is checked.
2. Install [CUDA 8](https://developer.nvidia.com/cuda-downloads).
3. Download [cuDNN](https://developer.nvidia.com/rdp/cudnn-download) v5.1, which **isn't** the latest version, and unzip its contents to where you installed CUDA.
4. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
5. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
6. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/gpu/tensorflow_gpu-1.2.1-cp35-cp35m-win_amd64.whl`.


## If you want to take advantage of cloud compute services

Regardless, if you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services, Microsoft Azure, or other providers. My step-by-step process for creating an Ubuntu instance with Google Cloud Compute and launching my Dockerized Jupyter notebook is available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 

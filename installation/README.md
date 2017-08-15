# Installation Instructions

## Mac OS X

Detailed step-by-step instructions for running the code notebooks for these LiveLessons on a Mac [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md).


## Unix

#### Where You Already Have the Dependencies

The dependencies are provided in this repository's [Dockerfile](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/Dockerfile). They are: 

* the [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) 
* TensorFlow
* Keras
* tflearn

If you have these packages configured as you like them, you can simply:

`git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`

#### Where You Are Missing Dependencies

1. Get Docker CE for, e.g., [Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
2. Follow all the steps in my [Step-by-Step Instructions for Mac](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md) that involve executing code at the command line. That is, execute all steps but one, four and five. 

#### In a Fresh Cloud Instance

If you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services, Microsoft Azure, or other providers. My rough notes for creating an Ubuntu instance with Google Cloud Compute and launching Dockerized Jupyter notebooks is available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 


## Windows

These steps are for users who installed the [Anaconda](https://www.continuum.io/downloads) Python 3 distribution, but other such distributions (e.g., [WinPython](https://winpython.github.io/), [Canopy](https://store.enthought.com/downloads/)) should work too. 

#### Install TensorFlow for CPU

1. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
2. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
3. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.2.1-cp35-cp35m-win_amd64.whl`.

#### Running Dockerized Jupyter Notebooks

*Currently, instructions for running the these LiveLessons' Jupyter notebooks from within a Docker container are unavailable on Windows. If you have experience doing this, please feel free to make a pull request and fill it in!* 


## GPU Considerations

Most of the examples in these LiveLessons involve relatively small (in Deep Learning terms) data sets so you will be in great shape using your CPU alone for training the models. That said, some of the later notebooks in these LiveLessons will train much more quickly if you employ a GPU. Alternatively, you may enjoy leveraging the efficient, highly-parallelised computations that a GPU affords for your own projects. Whatever the reason, here are TensorFlow GPU instructions for [Mac/Unix](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md#bonus-training-models-with-an-nvidia-gpu) or [Windows](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/windows_TF_GPU.md).  


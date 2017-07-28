# Installation Instructions

## Mac OS X

I've created detailed step-by-step instructions for running the code notebooks for these LiveLessons on a Mac [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md).

## Unix

#### Where You Already Have the Dependencies

The dependencies are provided in this repository's [Dockerfile](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/Dockerfile). They are: 

* the [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) 
* TensorFlow
* Keras
* tflearn

If you have these packages configured as you like them, you can simply `git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`. 

#### Where You Are Missing Dependencies

**JK MOVE THIS SUBSECTION INTO ITS OWN MD FILE**

1. step one
2. step two

#### In the Cloud

If you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services, Microsoft Azure, or other providers. My step-by-step process for creating an Ubuntu instance with Google Cloud Compute and launching Dockerized Jupyter notebooks is available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 


## Windows

These steps are for users who installed the [Anaconda](https://www.continuum.io/downloads) Python 3 distribution, but other such distributions (e.g., [WinPython](https://winpython.github.io/), [Canopy](https://store.enthought.com/downloads/)) should work too. 

#### Install TensorFlow for CPU

1. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
2. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
3. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.2.1-cp35-cp35m-win_amd64.whl`.

#### Install TensorFlow for GPU

You shouldn't *need* a GPU for these LiveLessons, but some of the later notebooks will run much more quickly if you do. Instructions for setting this up are [here](ADD LINK).





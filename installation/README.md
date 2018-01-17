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

If you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services (who conveniently offer a [Deep Learning-specific machine image](https://aws.amazon.com/amazon-ai/amis/)), Microsoft Azure, or other providers. Rough notes for creating an Ubuntu instance with Google Cloud Compute and launching Dockerized Jupyter notebooks are available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 


## Windows

These steps are for users who installed the [Anaconda](https://www.continuum.io/downloads) Python 3 distribution, but other such distributions (e.g., [WinPython](https://winpython.github.io/), [Canopy](https://store.enthought.com/downloads/)). Simple step-by-step instructions for installing Anaconda are provided [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/simple_Windows_Anaconda_install.md).

#### Install TensorFlow for CPU

1. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
2. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
3. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.2.1-cp35-cp35m-win_amd64.whl`.

#### Running Dockerized Jupyter Notebooks

In order to use Docker on Windows, you will need a 64-bit installation of Windows 10 Professional or Enterprise.

1. Install [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows). You may need to log out and/or reboot to complete the installation.
2. Install [SourceTree](https://www.sourcetreeapp.com/).
3. Using SourceTree, clone the repository at `https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`. Note the directory which you used for this clone.
4. Right-click on the Docker "whale" icon in the system tray and select "Settings..." followed by "Shared Drives". Ensure that the drive which you used for the checkout is marked as shared; you will need to enter your Windows password and restart Docker at this point.
5. Start a PowerShell prompt and change into the directory where you cloned the repository.
6. Build the Docker container by executing `docker build -t tensorflow-ll-stack .` (you'll get an error if you miss the final `.`!)
7. When that build process has finished, run the Docker container by executing `docker run -v c:/full/path/to/the/clone:/home/jovyan/work -it --rm -p 8888:8888 tensorflow-ll-stack`.
8. In the web browser of your choice (e.g., Chrome), copy and paste the URL created by Docker (this begins with `http://localhost:8888/?token=` and should be visible near the bottom of your Terminal window) 

## GPU Considerations

Most of the examples in these LiveLessons involve relatively small (in Deep Learning terms) data sets so you will be in great shape using your CPU alone for training the models. That said, some of the later notebooks in these LiveLessons will train much more quickly if you employ a GPU. Alternatively, you may enjoy leveraging the efficient, highly-parallelised computations that a GPU affords for your own projects. Whatever the reason, here are TensorFlow GPU instructions for [Mac/Unix](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md#bonus-training-models-with-an-nvidia-gpu) or [Windows](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/windows_TF_GPU.md).  


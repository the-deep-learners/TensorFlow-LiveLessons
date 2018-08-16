# Installation Instructions

## Mac OS X

Detailed step-by-step instructions for running the code notebooks for these LiveLessons on a Mac [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md).


## Unix

#### Where You Already Have the Dependencies

The dependencies are provided in this repository's [Dockerfile](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/Dockerfile). If you have these packages configured as you like them, you can simply:
`git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`

You can build the image from the Dockerfile:
`cd TensorFlow-LiveLessons` 
`docker image build .`
If you have all the requirements (ie Nvidia card, drivers...) to use tensorflow-gpu, you can also build from the GPU Dockerfile:
`docker image build -f Dockerfile-gpu .`

Instead of building the image yourself, you can pull it from a repo.
Non-GPU version:
docker pull godot80/tf-livelessons-no-gpu:latest
GPU version:
docker pull godot80/tf-livelessons-no-gpu:latest


#### Where You Are Missing Dependencies

1. Get Docker CE for, e.g., [Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
2. Follow all the steps in my [Step-by-Step Instructions for Mac](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md) that involve executing code at the command line. That is, execute all steps but one, four and five. 

#### In a Fresh Cloud Instance

If you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services (who conveniently offer a [Deep Learning-specific machine image](https://aws.amazon.com/amazon-ai/amis/)), Microsoft Azure, or other providers. Rough notes for creating an Ubuntu instance with Google Cloud Compute and launching Dockerized Jupyter notebooks are available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 


## Windows

Community members have kindly contributed several different sets of Windows installation instructions, each suited to a different use-case: 

1. If you have a 64-bit installation of Windows 10 Professional or Enterprise, you can follow the [full Docker container installation](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_Windows_Docker_install.md), which will ensure that you have all the dependencies. 
2. If you've never heard of *Anaconda* as being anything other than a snake, you can follow the simple step-by-step instructions [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/simple_Windows_Anaconda_install.md). 
3. If you already have Anaconda or a similar Python 3 distribution set up on your machine (e.g., WinPython, Canopy), then you can install TensorFlow in a virtual environment as outlined [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/conda_TensorFlow_install.md).

## GPU Considerations

Most of the examples in these LiveLessons involve relatively small (in Deep Learning terms) data sets so you will be in great shape using your CPU alone for training the models. That said, some of the later notebooks in these LiveLessons will train much more quickly if you employ a GPU. Alternatively, you may enjoy leveraging the efficient, highly-parallelised computations that a GPU affords for your own projects. Whatever the reason, here are TensorFlow GPU instructions for [Mac/Unix](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md#bonus-training-models-with-an-nvidia-gpu) or [Windows](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/windows_TF_GPU.md).  


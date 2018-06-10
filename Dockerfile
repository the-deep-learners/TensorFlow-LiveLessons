# Get the details on the base image here: http://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook
# Ubuntu 18.04 (bionic) from 2018-04-26
# Note: tag [e7000ca1416d] is latest image as of 06/09/2018
# I've specified exact versions here. Users can modify at their own risk to get more recent versions of libraries.
# Note that this base image includes Python 3.6.5 as part of Miniconda 4.5.1

FROM jupyter/scipy-notebook:e7000ca1416d

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install the libraries
RUN \
	# TensorFlow. Note: was 1.0* so this conforms on the MAJOR version. Thus should be backward compatible, except tf.contrib
	pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.8.0-cp36-cp36m-linux_x86_64.whl && \
	# TFlearn, Keras, PyTorch, Torchvision, NLP libraries and RL environment
	pip install tflearn==0.3.2 \
				keras==2.2.0 \
				nltk==3.3 \
				gensim==3.4.0 \
				gym==0.9.6 \
				http://download.pytorch.org/whl/cpu/torch-0.4.0-cp36-cp36m-linux_x86_64.whl \
				torchvision==0.2.1 \
				h5py==2.8.0
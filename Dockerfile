FROM jupyter/scipy-notebook

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install TensorFlow
# ...for Python 3: 
RUN conda install --quiet --yes 'tensorflow=1.0*'
# ...for Python 2:
RUN conda install --quiet --yes -n python2 'tensorflow=1.0*' 

# install tflearn and keras: 
RUN pip install tflearn==0.3
RUN pip install keras==2.0.3

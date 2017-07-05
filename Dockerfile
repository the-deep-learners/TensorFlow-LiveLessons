FROM jupyter/tensorflow-notebook

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install tflearn and keras
RUN pip install tflearn==0.3
RUN pip install keras==2.0.3

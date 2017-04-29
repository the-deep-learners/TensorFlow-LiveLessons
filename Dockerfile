FROM jupyter/tensorflow-notebook

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install tflearn and keras
RUN pip install tflearn
RUN pip install keras

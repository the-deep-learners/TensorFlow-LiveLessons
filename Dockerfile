FROM jupyter/scipy-notebook

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install TensorFlow
RUN pip install --quiet 'tensorflow=1.0*'

# install tflearn and keras: 
RUN pip install --quiet tflearn==0.3.2
RUN pip install --quiet keras==2.0.8

# install NLP packages:
RUN pip install --quiet nltk==3.2.4
RUN pip install --quiet gensim==2.3.0

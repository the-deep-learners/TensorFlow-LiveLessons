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

## If you have a local Windows machine and/or want to take advantage of cloud compute services

Anecdotally, based on the experiences of a handful of members of my [Deep Learning Study Group](deeplearningstudygroup.org), installing and running TensorFlow from a Windows operating system is, at best, a headache. Perhaps it can be done in a Docker container? If so, the step-by-step Mac OS X installation instructions I provided above can probably be adapted to Windows operating systems.

Regardless, if you'd like to enjoy the power and flexibility of cloud computing, you can spin up a machine with Google Cloud Compute, Amazon Web Services, Microsoft Azure, or other providers. My step-by-step process for creating an Ubuntu instance with Google Cloud Compute and launching my Dockerized Jupyter notebook is available [here](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_GCP_install.md). 

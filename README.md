# TensorFlow-LiveLessons
This repository is home to the code that accompanies the *Deep Learning with TensorFlow* LiveLessons that will become available within the [Safari Books](https://www.safaribooksonline.com/) environment in August 2017. A high-level summary of these LiveLessons, complete with photos, is available [on Medium](https://medium.com/@jjpkrohn/filming-deep-learning-with-tensorflow-livelessons-for-oreilly-safari-50363ed4efad). 

## Prerequisites

#### Command Line

Working through these LiveLessons will be easiest if you are familiar with the **Unix command line** basics. A tutorial of these fundamentals can be found [here](https://learnpythonthehardway.org/book/appendixa.html). 

#### Python for Data Analysis

In addition, if you're unfamiliar with using **Python** for data analysis (e.g., the **pandas**, scikit-learn, matplotlib packages), the [data analyst path of DataQuest](https://www.dataquest.io/path/data-analyst) will quickly get you up to speed -- steps one (*Introduction to Python*) and two (*Intermediate Python and Pandas*) provide the bulk of the essentials. 

## Installation

Step-by-step guides for running the code in this repository can be found in the [installation directory](https://github.com/the-deep-learners/TensorFlow-LiveLessons/tree/master/installation). 

## Notebooks

All of the code that I cover in the LiveLessons can be found in [this directory](https://github.com/the-deep-learners/TensorFlow-LiveLessons/tree/master/notebooks) as [Jupyter notebooks](http://jupyter.org/). 

Below is the lesson-by-lesson sequence in which I covered them: 

### Lesson One: Introduction to Deep Learning

#### 1.1 Neural Networks and Deep Learning

* via analogy to their biological inspirations, this section introduces Artificial Neural Networks and how they developed to their predominantly *deep* architectures today

#### 1.2 Running the Code in These LiveLessons

* goes over the [installation directory](https://github.com/the-deep-learners/TensorFlow-LiveLessons/tree/master/installation) mentioned above, discussing the options for working through my Jupyter notebooks
* details the [step-by-step installation of TensorFlow on Mac OS X](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md), a process that may be instructive for users of any Unix-like operating system

#### 1.3 An Introductory Artificial Neural Network

* get your hands dirty with a simple-as-possible neural network ([shallow_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/shallow_net_in_keras.ipynb)) for classifying handwritten digits
* introduces Jupyter notebooks and their most useful hot keys
* introduces a gentle quantity of deep learning terminology by whiteboarding through:
  * the MNIST digit data set
  * the preprocessing of images for analysis with a neural network
  * a shallow network architecture

---

### Lesson Two: How Deep Learning Works

#### 2.1 The Families of Deep Neural Nets and their Applications

* talk through the function and popular applications of the predominant modern families of deep neural nets:
  * Dense / Fully-Connected
  * Convolutional Networks (ConvNets)
  * Recurrent Neural Networks (RNNs) / Long Short-Term Memory units (LSTMs)
  * Reinforcement Learning
  * Generative Adversarial Networks

#### 2.2 Essential Theory I —- Neural Units

* the following essential deep learning concepts are explained with intuitive, graphical explanations: 
  * neural units and activation functions
    * perceptron
    * sigmoid ([sigmoid_function.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/sigmoid_function.ipynb))
    * tanh
    * Rectified Linear Units (ReLU)

#### 2.3 Essential Theory II -- Cost Functions, Gradient Descent, and Backpropagation

* cost functions
    * quadratic
    * cross-entropy ([cross_entropy_cost.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/cross_entropy_cost.ipynb))
  * gradient descent
  * backpropagation via the chain rule
  * layer types
    * input
    * dense / fully-connected
    * softmax output ([softmax_demo.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/softmax_demo.ipynb))
    
#### 2.3 TensorFlow Playground -- Visualizing a Deep Net in Action

* leverage [TensorFlow Playground](http://playground.tensorflow.org/) to interactively visualize the theory from the preceding section

#### 2.4 Data Sets for Deep Learning

* overview of canonical data sets for image classification and meta-resources for data sets ideally suited to deep learning

#### 2.5 Applying Deep Net Theory to Code I

* apply the theory learned throughout Lesson Two to create an intermediate-depth image classifier ([intermediate_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intermediate_net_in_keras.ipynb))
* builds on, and greatly outperforms, the shallow architecture from Section 1.3 

---

### Lesson Three: Convolutional Networks

#### 3.1 Essential Theory III -- Mini-Batches, Unstable Gradients, and Avoiding Overfitting

* add to our state-of-the-art deep learning toolkit by delving further into essential theory, specifically:
  * weight initialization
    * uniform
    * normal
    * Xavier Glorot
  * **stochastic** gradient descent
    * learning rate
    * batch size
    * second-order gradient learning
      * momentum
      * Adam
   * unstable gradients
     * vanishing
     * exploding
   * avoiding overfitting / model generalization
     * L1/L2 regularization
     * dropout
     * artificial data set expansion
   * batch normalization
   * more layers
     * max-pooling
     * flatten

#### 3.2 Applying Deep Net Theory to Code II

* apply the theory learned in the previous section to create a deep, dense net for image classification ([deep_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/deep_net_in_keras.ipynb))
* builds on, and outperforms, the intermediate architecture from Section 2.5

#### 3.3 Introduction to Convolutional Neural Networks for Visual Recognition

* whiteboard through an intuitive explanation of what convolutional layers are and how they're so effective

#### 3.4 Classic ConvNet Architectures -— LeNet-5

* apply the theory learned in the previous section to create a deep convolutional net for image classification ([lenet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/lenet_in_keras.ipynb)) that is inspired by the classic LeNet-5 neural network introduced in section 1.1

#### 3.5 Classic ConvNet Architectures -— AlexNet and VGGNet

* classify color images of flowers with two very deep convolutional networks inspired by contemporary prize-winning model architectures: AlexNet ([alexnet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/alexnet_in_keras.ipynb)) and VGGNet ([vggnet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/vggnet_in_keras.ipynb))

#### 3.6 TensorBoard and the Interpretation of Model Outputs

* return to the networks from the previous section, adding code to output results to the TensorBoard deep learning results-visualization tool
* explore TensorBoard and explain how to interpret model results within it

---

### Lesson Four: Introduction to TensorFlow

#### 4.1 Comparison of the Leading Deep Learning Libraries

* discuss the relative strengths, weaknesses, and common applications of the leading deep learning libraries:
  * Caffe
  * Torch
  * Theano
  * TensorFlow
  * and the high-level APIs TFLearn and Keras
* conclude that, for the broadest set of applications, TensorFlow is the best option

#### 4.2 Introduction to TensorFlow

* introduce TensorFlow graphs and related terminology:
  * ops
  * tensors
    * Variables
    * placeholders
  * feeds
  * fetches
* build simple TensorFlow graphs ([first_tensorflow_graphs.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/first_tensorflow_graphs.ipynb))
* build neurons in TensorFlow ([first_tensorflow_neurons.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/first_tensorflow_neurons.ipynb))

#### 4.3 Fitting Models in TensorFlow

* fit a simple line in TensorFlow:
  * by considering individual data points ([point_by_point_intro_to_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/point_by_point_intro_to_tensorflow.ipynb))
  * while taking advantage of tensors ([tensor-fied_intro_to_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/tensor-fied_intro_to_tensorflow.ipynb))
  * with batches sampled from millions of data points ([intro_to_tensorflow_times_a_million.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intro_to_tensorflow_times_a_million.ipynb))

#### 4.4 Dense Nets in TensorFlow

* create a dense neural net ([intermediate_net_in_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intermediate_net_in_tensorflow.ipynb)) in TensorFlow with an architecture identical to the intermediate one built in Keras in Section 2.5

#### 4.5 Deep Convolutional Nets in TensorFlow

* create a deep convolutional neural net ([lenet_in_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/lenet_in_tensorflow.ipynb)) in TensorFlow with an architecture identical to the LeNet-inspired one built in Keras in Section 3.4

---

### Lesson Five: Improving Deep Networks

#### 5.1 Improving Performance and Tuning Hyperparameters

* detail systematic steps for improving the performance of deep neural nets, including by tuning hyperparameters

#### 5.2 How to Built Your Own Deep Learning Project

* specific steps for designing and evaluating your own deep learning project

#### 5.3 Resources for Self-Study

* topics worth investing time in to become an expert deployer of deep learning models

---
---

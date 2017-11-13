# TensorFlow-LiveLessons

This repository is home to the code that accompanies [Jon Krohn's](https://www.jonkrohn.com/):

1. [Deep Learning with TensorFlow](https://www.safaribooksonline.com/library/view/deep-learning-with/9780134770826/) LiveLessons (summary blog post [here](https://medium.com/@jjpkrohn/filming-deep-learning-with-tensorflow-livelessons-for-oreilly-safari-50363ed4efad))
2. [Deep Learning for Natural Language Processing](https://www.safaribooksonline.com/library/view/deep-learning-for/9780134851921/) LiveLessons (summary blog post [here](https://insights.untapt.com/deep-learning-for-natural-language-processing-tutorials-with-jupyter-notebooks-ad67f336ce3f))

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

### [Deep Learning with TensorFlow LiveLessons](https://www.safaribooksonline.com/library/view/deep-learning-with/9780134770826/)

#### Lesson One: Introduction to Deep Learning

##### 1.1 Neural Networks and Deep Learning

* via analogy to their biological inspirations, this section introduces Artificial Neural Networks and how they developed to their predominantly *deep* architectures today

##### 1.2 Running the Code in These LiveLessons

* goes over the [installation directory](https://github.com/the-deep-learners/TensorFlow-LiveLessons/tree/master/installation) mentioned above, discussing the options for working through my Jupyter notebooks
* details the [step-by-step installation of TensorFlow on Mac OS X](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md), a process that may be instructive for users of any Unix-like operating system

##### 1.3 An Introductory Artificial Neural Network

* get your hands dirty with a simple-as-possible neural network ([shallow_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/shallow_net_in_keras.ipynb)) for classifying handwritten digits
* introduces Jupyter notebooks and their most useful hot keys
* introduces a gentle quantity of deep learning terminology by whiteboarding through:
  * the MNIST digit data set
  * the preprocessing of images for analysis with a neural network
  * a shallow network architecture

---

#### Lesson Two: How Deep Learning Works

##### 2.1 The Families of Deep Neural Nets and their Applications

* talk through the function and popular applications of the predominant modern families of deep neural nets:
  * Dense / Fully-Connected
  * Convolutional Networks (ConvNets)
  * Recurrent Neural Networks (RNNs) / Long Short-Term Memory units (LSTMs)
  * Reinforcement Learning
  * Generative Adversarial Networks

##### 2.2 Essential Theory I —- Neural Units

* the following essential deep learning concepts are explained with intuitive, graphical explanations: 
  * neural units and activation functions
    * perceptron
    * sigmoid ([sigmoid_function.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/sigmoid_function.ipynb))
    * tanh
    * Rectified Linear Units (ReLU)

##### 2.3 Essential Theory II -- Cost Functions, Gradient Descent, and Backpropagation

* cost functions
    * quadratic
    * cross-entropy ([cross_entropy_cost.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/cross_entropy_cost.ipynb))
  * gradient descent
  * backpropagation via the chain rule
  * layer types
    * input
    * dense / fully-connected
    * softmax output ([softmax_demo.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/softmax_demo.ipynb))
    
##### 2.4 TensorFlow Playground -- Visualizing a Deep Net in Action

* leverage [TensorFlow Playground](http://playground.tensorflow.org/) to interactively visualize the theory from the preceding section

##### 2.5 Data Sets for Deep Learning

* overview of canonical data sets for image classification and meta-resources for data sets ideally suited to deep learning

##### 2.6 Applying Deep Net Theory to Code I

* apply the theory learned throughout Lesson Two to create an intermediate-depth image classifier ([intermediate_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intermediate_net_in_keras.ipynb))
* builds on, and greatly outperforms, the shallow architecture from Section 1.3 

---

#### Lesson Three: Convolutional Networks

##### 3.1 Essential Theory III -- Mini-Batches, Unstable Gradients, and Avoiding Overfitting

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

##### 3.2 Applying Deep Net Theory to Code II

* apply the theory learned in the previous section to create a deep, dense net for image classification ([deep_net_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/deep_net_in_keras.ipynb))
* builds on, and outperforms, the intermediate architecture from Section 2.5

##### 3.3 Introduction to Convolutional Neural Networks for Visual Recognition

* whiteboard through an intuitive explanation of what convolutional layers are and how they're so effective

##### 3.4 Classic ConvNet Architectures -— LeNet-5

* apply the theory learned in the previous section to create a deep convolutional net for image classification ([lenet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/lenet_in_keras.ipynb)) that is inspired by the classic LeNet-5 neural network introduced in section 1.1

##### 3.5 Classic ConvNet Architectures -— AlexNet and VGGNet

* classify color images of flowers with two very deep convolutional networks inspired by contemporary prize-winning model architectures: AlexNet ([alexnet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/alexnet_in_keras.ipynb)) and VGGNet ([vggnet_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/vggnet_in_keras.ipynb))

##### 3.6 TensorBoard and the Interpretation of Model Outputs

* return to the networks from the previous section, adding code to output results to the TensorBoard deep learning results-visualization tool
* explore TensorBoard and explain how to interpret model results within it

---

#### Lesson Four: Introduction to TensorFlow

##### 4.1 Comparison of the Leading Deep Learning Libraries

* discuss the relative strengths, weaknesses, and common applications of the leading deep learning libraries:
  * Caffe
  * Torch
  * Theano
  * TensorFlow
  * and the high-level APIs TFLearn and Keras
* conclude that, for the broadest set of applications, TensorFlow is the best option

##### 4.2 Introduction to TensorFlow

* introduce TensorFlow graphs and related terminology:
  * ops
  * tensors
    * Variables
    * placeholders
  * feeds
  * fetches
* build simple TensorFlow graphs ([first_tensorflow_graphs.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/first_tensorflow_graphs.ipynb))
* build neurons in TensorFlow ([first_tensorflow_neurons.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/first_tensorflow_neurons.ipynb))

##### 4.3 Fitting Models in TensorFlow

* fit a simple line in TensorFlow:
  * by considering individual data points ([point_by_point_intro_to_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/point_by_point_intro_to_tensorflow.ipynb))
  * while taking advantage of tensors ([tensor-fied_intro_to_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/tensor-fied_intro_to_tensorflow.ipynb))
  * with batches sampled from millions of data points ([intro_to_tensorflow_times_a_million.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intro_to_tensorflow_times_a_million.ipynb))

##### 4.4 Dense Nets in TensorFlow

* create a dense neural net ([intermediate_net_in_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/intermediate_net_in_tensorflow.ipynb)) in TensorFlow with an architecture identical to the intermediate one built in Keras in Section 2.5

##### 4.5 Deep Convolutional Nets in TensorFlow

* create a deep convolutional neural net ([lenet_in_tensorflow.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/lenet_in_tensorflow.ipynb)) in TensorFlow with an architecture identical to the LeNet-inspired one built in Keras in Section 3.4

---

#### Lesson Five: Improving Deep Networks

##### 5.1 Improving Performance and Tuning Hyperparameters

* detail systematic steps for improving the performance of deep neural nets, including by tuning hyperparameters

##### 5.2 How to Built Your Own Deep Learning Project

* specific steps for designing and evaluating your own deep learning project

##### 5.3 Resources for Self-Study

* topics worth investing time in to become an expert deployer of deep learning models

--- 

![](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/book.jpg)

### [Deep Learning for Natural Language Processing](https://www.safaribooksonline.com/library/view/deep-learning-for/9780134851921/)

#### Lesson One: The Power and Elegance of Deep Learning for NLP

##### 1.1 Introduction to Deep Learning for Natural Language Processing

* high-level overview of deep learning as it pertains to Natural Language Processing (NLP)
* influential examples of industrial applications of NLP
* timeline of contemporary breakthroughs that have brought Deep Learning approaches to the forefront of NLP research and development

##### 1.2 Computational Representations of Natural Language Elements

* introduce the elements of natural language
* contrast how these elements are represented by traditional machine-learning models and emergent deep-learning models

##### 1.3 NLP Applications

* specify common NLP applications and bucket them into three tiers of relative complexity

##### 1.4 Installation, Including GPU Considerations

* build on the [step-by-step installation of TensorFlow on Mac OS X](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md) covered in the [Deep Learning with TensorFlow LiveLessons](https://github.com/the-deep-learners/TensorFlow-LiveLessons/#12-running-the-code-in-these-livelessons) to facilitate the training of deep learning models with an Nvidia GPU. 

##### 1.5 Review of Prerequisite Deep Learning Theory

* summarise the key concepts introduced in the [Deep Learning with TensorFlow LiveLessons](https://www.safaribooksonline.com/library/view/deep-learning-with/9780134770826/), which serve as the foundation for the material introduced in these NLP-focused LiveLessons

##### 1.6 A Sneak Peak

* take a tantalising look ahead at the capabilities developed over the course of these LiveLessons

---

#### Lesson Two: Word Vectors

##### 2.1 Vector-Space Embedding

* leverage interactive demos to enable an intuitive understanding of vector-space embeddings of words, nuanced quantitative representations of word meaning

##### 2.2 word2vec

* key papers that led to the development of word2vec, a technique for transforming natural language into vector representations
* essential word2vec theory introduced:
  * architectures:
    1. Skip-Gram
    2. Continuous Bag of Words
  * training algorithms:
    1. hierarchical softmax
    2. negative sampling
  * evaluation perspectives:
    1. intrinsic
    2. extrinsic
  * hyperparameters:
    1. number of dimensions
    2. context-word window size
    3. number of iterations
    4. size of data set
* contrast word2vec with its leading alternative, [GloVe](https://nlp.stanford.edu/projects/glove/)

##### 2.3 Data Sets for NLP

* pre-trained word vectors:
  * for [word2vec](https://code.google.com/archive/p/word2vec/)
  * for [GloVe](http://nlp.stanford.edu/projects/glove/)
* natural language data sets:
  * Jon Krohn's [resources page](https://www.jonkrohn.com/resources/)
  * [Zhang, Zhao and LeCun's](https://arxiv.org/pdf/1509.01626.pdf) [labelled data](http://xzh.me/)
  * Internet Movie DataBase (IMDB) reviews classified by sentiment from [Andrew Maas and his Stanford colleagues (2011)](http://ai.stanford.edu/~amaas/papers/wvSent_acl2011.pdf)
  
##### 2.4 Creating Word Vectors with word2vec

* use books from [Project Gutenberg](https://www.gutenberg.org/) to create word vectors with word2vec
* interactively visualise the word vectors with the [bokeh](https://bokeh.pydata.org/en/latest/) library ([creating_word_vectors_with_word2vec.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/creating_word_vectors_with_word2vec.ipynb))

---

#### Lesson Three: Modeling Natural Language Data

##### 3.1 Best Practices for Preprocessing Natural Language Data

* in [natural_language_preprocessing_best_practices.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/natural_language_preprocessing_best_practices.ipynb), apply the following recommended best practices to clean up a corpus natural language data prior to modeling: 
  * tokenize
  * convert all characters to lowercase
  * remove stopwords
  * remove punctuation
  * stem words
  * handle bigram (and trigram) word collocations
  
##### 3.2 The Area Under the ROC Curve

* detail the calculation and functionality of the area under the Receiver Operating Characteristic curve summary metric, which is used throughout the remainder of the LiveLessons for evaluating model performance

##### 3.3 Dense Neural Network Classification

* pair vector-space embedding with the fundamentals of deep learning introduced in the [Deep Learning with TensorFlow LiveLessons](https://www.safaribooksonline.com/library/view/deep-learning-with/9780134770826/) to create a dense neural network for classifying documents by their sentiment ([dense_sentiment_classifier.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/dense_sentiment_classifier.ipynb))

##### 3.4 Convolutional Neural Network Classification

* add convolutional layers to the deep learning architecture to improve the performance of the natural language classifying model ([convolutional_sentiment_classifier.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/convolutional_sentiment_classifier.ipynb))

---

#### Lesson Four: Recurrent Neural Networks

##### 4.1 Essential Theory of RNNs

* provide an intuitive understanding of Recurrent Neural Networks (RNNs), which permit backpropagation through time over sequential data, such as natural language and financial time series data

##### 4.2 RNNs in Practice

* incorporate simple RNN layers into a model that classifies documents by their sentiment ([rnn_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/rnn_in_keras.ipynb)

##### 4.3 Essential Theory of LSTMs and GRUs

* develop familiarity with the Long Short-Term Memory (LSTM) and Gated Recurrent Unit (GRU) varieties of RNNs which provide markedly more productive modeling of sequential data with deep learning models

##### 4.4 LSTMs and GRUs in Practice

* straightforwardly build LSTM ([vanilla_lstm_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/vanilla_lstm_in_keras.ipynb)) and GRU ([gru_in_keras.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/gru_in_keras.ipynb)) deep learning architectures through the Keras high-level API 

--- 

#### Lesson Five: Advanced Models

##### 5.1 Bi-Directional LSTMs

* Bi-directional LSTMs are an especially potent variant of the LSTM
* high-level theory on Bi-LSTMs before leveraging them in practice ([bidirectional_lstm.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/bidirectional_lstm.ipynb))

##### 5.2 Stacked LSTMs

* Bi-LSTMs are stacked to enable deep learning networks to model increasingly abstract representations of language ([stacked_bidirectional_lstm.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/stacked_bidirectional_lstm.ipynb); [ye_olde_conv_lstm_stackeroo.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/ye_olde_conv_lstm_stackeroo.ipynb))

##### 5.3 Parallel Network Architectures

* advanced data modeling capabilities are possible with non-sequential architectures, e.g., parallel convolutional layers, each with unique hyperparameters ([multi_convnet_architectures.ipynb](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/notebooks/multi_convnet_architectures.ipynb))

---
---

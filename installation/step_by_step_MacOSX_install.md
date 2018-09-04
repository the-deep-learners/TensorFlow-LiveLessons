# Step-by-Step Instructions for Mac OS X

These instructions enable you to run TensorFlow code from the comfort of interactive Jupyter notebooks. Jupyter is itself run from within a Docker container because this ensures that you'll have all of the software dependencies you need while simultaneously preventing these dependencies from clashing with the software you already have installed on your system. 

## Install

1. Open the Terminal application ([like this](http://www.wikihow.com/Open-a-Terminal-Window-in-Mac))
2. To install in your home directory (this is my recommended default):
	* Type `cd ~` into the command-line prompt and 
	* *Execute* the line by pressing the **return** key on your keyboard
3. Retrieve all of the code for this LiveLessons by executing `git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git` (if you haven't used `git` before, you may be prompted to install Xcode -- do it!)
4. [Install the Docker "Stable channel"](https://docs.docker.com/docker-for-mac/install/) (if you are already using an older version of Docker and run into installation issues downstream, try updating to the latest version of Docker)
5. Start Docker, e.g., by using Finder to navigate to your Applications folder and double-clicking on the Docker icon
6. Back in Terminal, execute `source TensorFlow-LiveLessons/installation/let_jovyan_write.sh` so that you can write to files in the *TensorFlow-LiveLessons* directory from inside the Docker container we'll be creating momentarily 
7. Move into the *TensorFlow-LiveLessons* directory by executing `cd TensorFlow-LiveLessons`
8. Build the Docker container by executing `sudo docker build -t tensorflow-ll-stack .` (you'll get an error if you miss the final `.`!)
9. When that build process has finished, run the Docker container by executing `sudo docker run -v ~/TensorFlow-LiveLessons:/home/jovyan/work -it --rm -p 8888:8888 tensorflow-ll-stack` (if you modified steps two or three above, e.g., by running `git clone` somewhere other than your home `~` directory, then you will need to similarly modify the `~/TensorFlow-LiveLessons` directory location portion of this command)
10. In the web browser of your choice (e.g., Chrome), copy and paste the URL created by Docker (this begins with `http://localhost:8888/?token=` and should be visible near the bottom of your Terminal window) 

## Shutdown

You can shutdown the Jupyter notebook by returning to the Terminal session that is running it and hitting the **control** and **c** keys simultaneously on your keyboard. 

## Restart

You can restart the Jupyter notebook later by following steps nine and ten alone. 

## Bonus: Training Models with an Nvidia GPU

You don't need to train your Deep Learning models with a GPU for this course, but some of the later notebooks in these LiveLessons will run much more quickly if you do. 

1. Install an [Nvidia GPU](http://www.nvidia.com/content/global/global.php) on your machine or spin up a cloud instance that includes one (typically a Tesla K80)
1. Install CUDA and cuDNN, e.g., per the **Installing CUDA Toolkit** and **Installing cuDNN** sections of [this blog post](https://hackernoon.com/launch-a-gpu-backed-google-compute-engine-instance-and-setup-tensorflow-keras-and-jupyter-902369ed5272) (this step may be tricky if you're relatively new to working with the Unix command line)
2. In the `TensorFlow-LiveLessons/installation/docker-stack-scripts` directory:
	* run `chmod 777 jupyter_notebook_config.py start*.sh`
3. Replace step eight of my **Install** section above with `sudo docker build -f Dockerfile-gpu -t tfll-gpu-stack .`
4. Replace step nine with `sudo nvidia-docker run -v ~/TensorFlow-LiveLessons:/home/jovyan/work -it --rm -p 8888:8888 tfll-gpu-stack`

## Bonus: Using a Pre-Built Docker Image

Instead of building a Docker image on your own machine, Godefroy Clair is kindly hosting a pre-built Docker image. In place of the `sudo docker build...` steps in the above instructions, you could instead run: 

* `docker pull godot80/tf-livelessons-no-gpu:latest` for the CPU-only version, or
* `docker pull godot80/tf-livelessons:latest` for the Nvidia GPU version

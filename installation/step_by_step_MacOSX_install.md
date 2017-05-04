# Step-by-Step Installation Instructions on Mac OS X

1. open the Terminal application ([like this](http://www.wikihow.com/Open-a-Terminal-Window-in-Mac))
2. to install in your home directory (this is my recommended default):
	* type `cd ~` into the command-line prompt and 
	* *execute* by pressing the **return** key on your keyboard
3. retrieve all of the code for this LiveLessons by executing `git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`
4. [install the Docker "Stable channel"](https://docs.docker.com/docker-for-mac/install/)
5. start Docker, e.g., by using Finder to navigate to your Applications folder and double-clicking on the Docker icon
6. back in Terminal, execute `source TensorFlow-LiveLessons/installation/let_jovyan_write.sh` so that you can write to files in the *TensorFlow-LiveLessons* directory from inside the Docker container we'll be creating momentarily 
7. move into the *TensorFlow-LiveLessons* directory by executing `cd TensorFlow-LiveLessons`
8. build the Docker container by executing `sudo docker build -t tensorflow-ll-stack .`
9. when that build process has finished, run the Docker container by executing `sudo docker run -v ~/TensorFlow-LiveLessons:/home/jovyan/work -it --rm -p 8888:8888 tensorflow-ll-stack`
10. in the web browser of your choice (e.g., Chrome), copy and paste the URL created by Docker (this begins with `http://localhost:8888/?token=` and should be visible near the bottom of your Terminal window) 

## Shutdown

You can shutdown the Jupyter notebook by returning to the Terminal session that is running it and hitting the **control** and **c** keys simultaneously on your keyboard. 

## Restart

You can restart the Jupyter notebook later by following steps nine and ten alone. 

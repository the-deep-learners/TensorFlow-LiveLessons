# Miscellaneous Notes

#### to enter into the Docker container on the command line: 

1. use `sudo docker ps` to see the `NAME` that was randomly generated
2. `sudo docker exec -it <NAME> bash` to enter into the session (N.B.: nothing will be saved)


#### to install jupyter vim bindings within Docker container:

1. install notebook extensions (as in [here](https://github.com/ipython-contrib/jupyter_contrib_nbextensions#installation)):

        1. `pip install jupyter_contrib_nbextensions`
        2. `jupyter contrib nbextension install --user`

2. following the [instructions](https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation) doesn't work because you need to activate the notebook after making these changes... I imagine the same is true for themes

#### to make your own Docker container:

1. `vi Dockerfile`
2. create something with [this](https://raw.githubusercontent.com/jupyter/docker-stacks/master/tensorflow-notebook/Dockerfile) type of structure
3. `sudo docker build -t <NEW_NAME> .`
4. `sudo docker run -v ~/TensorFlow-LiveLessons:/home/jovyan/work -it --rm -p 8888:8888 <NEW_NAME>`

#### to remove Docker images: 

* `sudo docker image ls` to view images
* `sudo docker rmi <IMAGE_NAME>` to remove [script to identify descendants](https://gist.github.com/altaurog/21ea7afe578a523e3dfe8d8a746f1e7d)
* `sudo docker image prune -a` to remove all images without at least one container associated to them

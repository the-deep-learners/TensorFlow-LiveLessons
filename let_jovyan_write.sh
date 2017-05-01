# script that provides jovyan, the default Docker container username, permission to write to the directory
sudo chgrp -R 100 TensorFlow-LiveLessons/ #to recursively change group to match jovyan
sudo chmod -R g+w TensorFlow-LiveLessons/ #to recursively change permissions so jovyan can write to the directory

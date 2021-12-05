# Dockerfiles
A variety of docker images (Zed, ROS, Cuda) which may be helpful for launching different environments quickly 

Run the `build-zed.sh` file to build the images `zed-gl-base` and `zed-ros`. They have arguments that are annoying to specify manually. (And ros depends on gl-base)

The `run-docker` script run a docker container interactively, as well as
1. Initializing X11 for GUI support within the cocntainer (works on linux only) 
2. Sets up GPU passthrough
3. Mounts `$HOME/code` for whatever files you want to share between your machine and the docker container (turn this off trivially in the script)

Use the script like this:
1. Run it without any arguments to list all images
2. Run it with one argument: the [image name] to spin up a new container 
3. Run it with two arguments: [image name] and [command] to run the command inside a new container 

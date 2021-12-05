# Dockerfiles
A variety of docker images (Zed, ROS, Cuda) which may be helpful for launching different environments quickly 

Docker is software that lets you package code, dependencies, and environments into containers. Containers can be entire ubuntu distros -- the dockerfiles here are actually ubuntu distros with certain dependencies, like ROS, CUDA, and ZED installed in them. Containers are convenient becasue they will work the same anywhere - the user doesn't have to to install everything again.  

However, a ubuntu container will only run on Linux machines and a windows containers will only run on windows. You can't launch these dockerfiles from Windows or Mac.

# Building
Run the `build-zed.sh` file to build the images `zed-gl-base` and `zed-ros`. They have arguments that are annoying to specify manually. (And ros depends on gl-base)

To build all other images, first `cd` into the `Dockerfiles` directory. Then, to build `dockerfile-name`, do `docker build -f dockerfile-name -t dockerfile-name .`

# Running
The `run-docker` script run a docker container interactively, as well as
1. Initializing X11 for GUI support within the cocntainer (works on linux only) 
2. Sets up GPU passthrough
3. Mounts `$HOME/code` for whatever files you want to share between your machine and the docker container (turn this off trivially in the script)

Use the script like this:
1. Run it without any arguments to list all images
2. Run it with one argument: the [image name] to spin up a new container 
3. Run it with two arguments: [image name] and [command] to run the command inside a new container 

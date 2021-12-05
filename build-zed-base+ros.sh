# Install nvidia CUDA + GL and Ubuntu and Zed SDK 
docker build \
             --build-arg ZED_SDK_MAJOR=3 \
             --build-arg ZED_SDK_MINOR=6 \
             --build-arg CUDA_MAJOR=11 \
             --build-arg CUDA_MINOR=4 \
             --build-arg CUDA_VERYMINOR=2 \
             --build-arg UBUNTU_RELEASE_YEAR=20 \
             -f zed-gl-base \
             -t zed-gl-base .
   
# Install ROS and Zed ROS packages      
# Depends on zed-gl-base    
docker build \
             --build-arg ROS_DISTRO_ARG=noetic \
             -f zed-ros \
             -t zed-ros .

# Start from the PyTorch base image
FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

# Create a directory inside the container
WORKDIR /workspace

# Copy files from your project's workspace into the container's workspace
COPY . /workspace

# Install required Python packages
RUN pip install argparse easydict h5py matplotlib numpy \
    open3d==0.10.0.0 opencv-python pyyaml scipy tensorboardX \
    timm==0.4.5 tqdm transforms3d termcolor


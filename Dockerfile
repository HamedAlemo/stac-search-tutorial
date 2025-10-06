FROM continuumio/miniconda3:25.3.1-1

# Create a Conda environment with JupyterLab installed
RUN conda install numpy jupyterlab matplotlib pystac-client=0.9.0 rioxarray=0.19.0 leafmap=0.52.4 --channel conda-forge

# Create a non-root user and switch to that user
RUN useradd -m jupyteruser
USER jupyteruser

WORKDIR /home/jupyteruser

# Expose the JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]

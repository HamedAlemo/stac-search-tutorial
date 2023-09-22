FROM continuumio/miniconda3:22.11.1

# Create a Conda environment with JupyterLab installed
RUN conda install numpy=1.23.1 jupyterlab=3.6.3 matplotlib 
RUN conda install pystac-client=0.7.5 rioxarray=0.15.0 --channel conda-forge

# Create a non-root user and switch to that user
RUN useradd -m jupyteruser
USER jupyteruser

WORKDIR /home/jupyteruser

# Expose the JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]

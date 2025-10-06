# Tutorial for Using a STAC API and Search for Satellite Scenes

In this tutorial, you will learn how to use PySTAC Client and search for satellite imagery using a STAC API. 
This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 


## Requirements

You need to have Docker installed on your machine. 

## Instructions

First, you need to pull this repository to your local computer:
```
git clone git@github.com:HamedAlemo/stac-search-tutorial.git
```
Change your current directory to be inside the downloaded repository:
```
cd stac-search-tutorial
```

### Method 1: Pull Docker image from DockerHub (Recommended)

It's recommended to pull the Docker image from DockerHub.

```
docker pull hamedalemo/stac-search-tutorial:1.1
```
```
docker run -it -v $(pwd):/home/jupyteruser -p 8888:8888 hamedalemo/stac-search-tutorial:1.1
```

- Copy the Jupyter Lab url and paste it in your browser. 
- Open `earth_search_tutorial.ipynb` and follow the instructions. 

### Method 2: Build your own Docker image (Not Recommended)

- **Windows users:** It is highly recommended that you pull the Docker image, there seems to be an issue with conda-forge on WSL. 
- Build the Docker image using the following command:
```
docker build -t stac-search-tutorial:1.1 .
```
- Run a container using the following command:
```
docker run -it -v $(pwd):/home/jupyteruser -p 8888:8888 stac-search-tutorial:1.1
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `earth_search_tutorial.ipynb` and follow the instructions. 

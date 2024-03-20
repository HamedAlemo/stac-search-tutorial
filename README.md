# Tutorial for Using a STAC API and Search for Satellite Scenes

In this tutorial, you will learn how to use PySTAC and seach for satellite imagery on a STAC catalog. 
This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught in Fall 2023 at Clark University. 


## Requirements

You need to have Docker installed on your machine. 

## Instructions

It's recommended to pull the Docker image from Dockerhub. Otherwise, if you prefer, you can build your own image using the instructions in the following section. 

```
$ docker pull hamedalemo/stac-search-tutorial:1.0
```
```
$ docker run -it -p 8888:8888 hamedalemo/stac-search-tutorial
```

- Copy the Jupyter Lab url and paste it in your browser. 
- Open `earth_search_tutorial.ipynb` and follow the instructions. 

### Build your own Docker image (optional)

- Windows users: It is highly recommended that you pull the Docker image, there seems to be an issue with conda-forge
- Clone the repository to your local machine
- Change directory to the repository's directory on your machine
- Build the Docker image using the following command:
```
$ docker build -t stac-search-tutorial 
```
- Run a container using the following command:
```
$ docker run -it -p 8888:8888 stac-search-tutorial
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `earth_search_tutorial.ipynb` and follow the instructions. 

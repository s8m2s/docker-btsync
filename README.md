# BTSync Dockerfile
Runs btsync within a docker contaner using ubuntu 14.0.4 as a base.

## Setup
In progreess

## Build the dev image from docker file

    $ docker build -t montag451/btsync:dev .

## Run the dev container
    
    $ docker run -it --rm --name="btsync-dev" \
        -v ~/.docker_data/docker-btsync/data:/data \
        -p 8888:8888 \
        -p 3838:3838 \
        montag451/btsync:dev

## Run the Container for real

    $ docker run -d --name="btsync-dev" \
        -v ~/.docker_data/docker-btsync/data:/data \
        -p 8888:8888 \
        -p 3838:3838 \
        montag451/btsync:dev
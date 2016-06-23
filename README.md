# BTSync Dockerfile
Runs btsync within a docker contaner using ubuntu 14.0.4 as a base.

## Setup
In progreess

## Run the Container

    $ docker run -it --rm --name="BTSync" \
        -v ~/.docker_data/docker-btsync/conf:/data \
        --net="bridge" \
        -p 8888:8888/tcp \
        -p 5555:5555/tcp \
        -p 3838:3838/udp \
        btsync
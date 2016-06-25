# BTSync Dockerfile
Runs btsync within a docker container using ubuntu 14.0.4 as a base.

Uses the web interface for config. And will store your sync data on the host so you can rebuild the image without loosing anything.

## Run the Container

This will run the container as in the background. If you want to use another port, you will have to modify the *btsync.conf* file and rebuild the image.

    $ docker run -d --name="btsync" \
        -v $HOME/.docker_btsync:/data \
        -p 8888:8888 \
        -p 55555:55555 \
        montag451/docker-btsync:latest
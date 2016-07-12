# BTSync Dockerfile
Runs btsync within a docker container using ubuntu 14.0.4 as a base.

Uses the web interface for config. And will store your sync data on the host so you can rebuild the image without loosing anything.

## Run the Container

This will run the container as in the background. If you want to use another port, you will have to modify the *btsync.conf* file and rebuild the image.

    $ docker run --name="btsync" \
        -d \
        -v /btsync:/data \
        -p 8888:8888 \
        -p 55555:55555 \
        montag451/docker-btsync:latest

### Parameters

* `--restart=always` - use if you want to have the container restart after system reboot or if the contain dies for some reason.

* `-v $HOME/btsync:/data` - puts the data from the container a dir called btsync in the users home directory, you can change that to whatever you want.


## Configure BitTorrent Sync

you should now be able to access the webui from something like 
[http://localhost:8888](http://localhost:8888)

Or if from another computer, use the IP address of the machine running our docker container; so, something like [http://**192.168.0.108**:8888](http://192.168.0.108:8888) for example.

If you want to be able to access the files being synced on the host machine; you could store shared folders in /data within the container. if you do that, you will be able to access them directly from the host in the ~/btsync directory or whatever you called it.

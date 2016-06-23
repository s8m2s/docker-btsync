FROM ubuntu:14.04
MAINTAINER Scott Stamile <scottstamile@gmail.com>

# Download btsync
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /root/btsync.tar.gz

# untar downloaded btsync and remove original
RUN tar -xzvf /usr/bin/btsync/btsync.tar.gz btsync -C /usr/bin/ \
	&& rm /root/btsync/btsync.tar.gz

# Make Directory's
RUN mkdir -p \
	/btsync/.sync \
	/var/run/btsync \
	/data

# PORTS!
EXPOSE 8888 5555 3838

VOLUME ["/data"]

WORKDIR /usr/bin/btsync/

# add the start script
ADD start-btsync /usr/bin/start-btsync
RUN chmod +x /usr/bin/start-btsync
ENTRYPOINT ["/bin/bash"]
FROM ubuntu:14.04
MAINTAINER Scott Stamile <scottstamile@gmail.com>

# Download btsync
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /root/btsync/btsync.tar.gz

# untar downloaded btsync and remove original
RUN tar -xzvf /root/btsync/btsync.tar.gz -C /root/btsync/ \
	&& rm /root/btsync/btsync.tar.gz

# Make Directory's
RUN mkdir -p \
	/btsync/.sync \
	/var/run/btsync \
	/data

# PORTS!
EXPOSE 8888 55555

VOLUME ["/data"]

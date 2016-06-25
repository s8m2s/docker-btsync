FROM ubuntu:14.04
MAINTAINER Scott Stamile <scottstamile@gmail.com>

# Download btsync
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /tmp/btsync.tar.gz

# untar downloaded btsync and remove original
RUN tar -xzvf /tmp/btsync.tar.gz -C /usr/bin/ btsync \
	&& rm /tmp/btsync.tar.gz

# Make Directory's
RUN mkdir -p \
	/data/ \ 
	/btsync/ \
	/var/run/btsync


# PORTS!
EXPOSE 8888 55555

VOLUME ["/data"]

ADD start-btsync /usr/bin/
RUN chmod +x /usr/bin/start-btsync

# Starts btsync using the btsync.conf file we just created
ENTRYPOINT ["start-btsync"]

FROM ubuntu:14.04
MAINTAINER Scott Stamile <scottstamile@gmail.com>

# Download btsync
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /tmp/btsync.tar.gz

# untar downloaded btsync and remove original
RUN tar -xzvf /tmp/btsync.tar.gz -C /usr/bin/ btsync \
	&& rm /tmp/btsync.tar.gz

# Make Directory's
RUN mkdir -p \
	/data/.sync \
	/var/run/btsync


# PORTS!
EXPOSE 8888 3838

VOLUME ["/data"]

# WORKDIR /usr/bin/btsync/

# add the start script
# ADD start-btsync /usr/bin/start-btsync
# RUN chmod +x /usr/bin/start-btsync
# ENTRYPOINT ["/bin/bash"]
CMD ["btsync", "--config", "/data/btsync.conf", "--nodaemon"]
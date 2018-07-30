# Download base image ubuntu 16.04
FROM ubuntu:16.04

LABEL maintainer="ODN Docker Maintainers <docker@obsidianplatform.com>"

# Update Ubuntu Software repository
RUN apt-get update

# Install packages
RUN apt-get install -y build-essential autoconf automake git g++ libtool make unzip wget qt5-default qt5-qmake qtbase5-dev qtbase5-dev-tools \
	libqt5webkit5 libqt5webkit5-dev libqt5qml5 libqt5quickwidgets5 qml-module-qt-labs-settings qtdeclarative5-dev-tools qttools5-dev-tools \
	libboost-all-dev libssl-dev libdb++-dev libdb5.3++-dev libdb5.3-dev libminiupnpc-dev libqrencode-dev libprotobuf-dev

# Install Libsodium (move to source)
RUN cd /tmp \
	&& wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.14.tar.gz \
	&& tar -xvzf libsodium-* \
        && cd libsodium* \
	&& ./configure \
        && make && make check && make install && ldconfig

# Install Obsidian
RUN cd /tmp \
	&& git clone https://github.com/obsidianplatform/Obsidian-QT.git obsidian-qt \
	&& cd obsidian-qt/src \
	&& NPROC=$(nproc) \
	&& make -j$NPROC -f makefile.unix \
	&& cp /tmp/obsidian-qt/src/obsidiand /usr/bin/

# Add default conf
ADD obsidian.conf .obsidian

#STOPSIGNAL SIGTERM

#RUN ["/usr/bin/obsidiand -daemon"]

CMD ["entry.sh"]

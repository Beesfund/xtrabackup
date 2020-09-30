FROM debian:stable-slim
RUN apt update && apt-get -y install ncat curl libaio1 libdbd-mysql-perl rsync libcurl4 libcurl4-openssl-dev libev4 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN curl -o xtrabackup.deb https://www.percona.com/downloads/Percona-XtraBackup-LATEST/Percona-XtraBackup-8.0.14/binary/debian/buster/x86_64/percona-xtrabackup-80_8.0.14-1.buster_amd64.deb && dpkg -i xtrabackup.deb && rm xtrabackup.deb

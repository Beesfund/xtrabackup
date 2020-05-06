FROM debian:stable-slim
RUN apt update && apt-get -y install ncat curl libaio1 libdbd-mysql-perl rsync libcurl4 libev4 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN curl -o xtrabackup.deb https://www.percona.com/downloads/Percona-XtraBackup-LATEST/Percona-XtraBackup-8.0.11/binary/debian/buster/x86_64/percona-xtrabackup-80_8.0.11-1.buster_amd64.deb && dpkg --ignore-depends=libcurl3 -i xtrabackup.deb && rm xtrabackup.deb

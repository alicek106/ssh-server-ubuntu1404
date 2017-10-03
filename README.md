# OpenSSH Server for Docker Image ubuntu 14.04
This image is for mpi based image in hpc environment.

# Build
[root@localhost #] docker build . -t myimage

# How to use
[root@localhost ssh-server-centos7]# docker run -it --rm 601kecila/ssh-server-ubuntu1404:0.0  
[root@bc51addddb91 /]# ssh localhost  
Warning: Permanently added 'localhost' (ECDSA) to the list of known hosts.  
[root@bc51addddb91 ~]#  

# How to use, 2017. 10. 03
[root@localhost ssh-server-centos7]# docker run -it --rm 601kecila/ssh-server-ubuntu1404:0.1-tcconfig cali0 1m 2m

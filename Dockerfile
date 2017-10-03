# ubuntu ssh server install
FROM ubuntu:14.04

RUN apt update
RUN apt install openssh-server -y
RUN echo /usr/sbin/sshd >> /root/.bashrc 

RUN mkdir /root/.ssh && cat /etc/ssh/ssh_host_rsa_key >> ~/.ssh/id_rsa && \
 cat /etc/ssh/ssh_host_rsa_key.pub >> ~/.ssh/authorized_keys
 
ADD config /root/.ssh/config 
RUN sed -i \
        -e 's~^PasswordAuthentication yes~PasswordAuthentication no~g' \
        /etc/ssh/sshd_config
		
RUN chmod 400 ~/.ssh/id_rsa
RUN apt install python-pip -y
RUN pip install tcconfig
RUN mkdir /var/run/sshd
 
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

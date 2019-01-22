FROM ubuntu:trusty


ENV TERM=xterm-256color

RUN apt-get update
RUN apt-get install -qy software-properties-common 
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get install -qy ansible


VOLUME /ansible
WORKDIR /ansible

ENTRYPOINT ["ansible-playbook"]
CMD ["site.yml"]
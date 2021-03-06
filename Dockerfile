FROM daocloud.io/xin_cqu/matlab_config

MAINTAINER Xin Wen <nclxwen@gmail.com>

RUN apt-get update
RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/Xin-cqu/test_docker.git
ADD test_data /root/matlab_script/test_data
RUN chmod 777 -R /root/matlab_script/
ENTRYPOINT ["/root/matlab_script/test_data"]

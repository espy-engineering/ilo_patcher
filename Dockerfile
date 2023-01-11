FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository universe
RUN apt-get update
RUN apt-get install -y python2-minimal git curl wget
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && python2 get-pip.py
RUN git clone --recurse-submodules https://github.com/kendallgoto/ilo4_unlock.git
WORKDIR ilo4_unlock
RUN pip install -r requirements.txt
RUN ./build.sh init
RUN ln -s /usr/bin/python2 /usr/bin/python
ENTRYPOINT ["./build.sh", "277"]


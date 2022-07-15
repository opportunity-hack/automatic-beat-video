FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
        software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
    python3.7 \
    python3-pip
RUN python3.7 -m pip install pip
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-setuptools
RUN python3.7 -m pip install pip --upgrade pip
RUN apt-get install -y python3.7-dev
RUN apt-get install -y bash
#ADD requirements.txt /
RUN apt-get install -y ffmpeg
RUN pip3 install Cython
RUN pip3 install numpy
RUN pip3 install jupyter matplotlib librosa madmom cython madmom opencv-python sgmllib3k ffmpy tzlocal



RUN mkdir /app


EXPOSE 8888

ENTRYPOINT ["jupyter notebook --ip 0.0.0.0 --no-browser --allow-root"]

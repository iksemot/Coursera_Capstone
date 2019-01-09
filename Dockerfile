FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -qy \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    pandoc \
    pandoc-citeproc \
    texlive-xetex

WORKDIR /root
ADD requirements.txt /root/
RUN pip install -r requirements.txt

ADD jupyter-config /root/.jupyter
ADD README.md /root/capstone-project/

EXPOSE 8888

CMD ["jupyter", "lab", "/root/capstone-project"]

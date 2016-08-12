FROM ubuntu:16.04

MAINTAINER Seizan Shimazaki <seizans@gmail.com>

RUN apt-get update \
  && apt-get install -y \
         build-essential \
         python-dev \
         python-pip \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip install flask

ENV PATH /opt/erlang-${OTP_VERSION}/bin:$PATH

COPY . /root/work/

WORKDIR /root/work

ENTRYPOINT ["python", "main.py"]

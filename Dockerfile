FROM python:3.5.6

ARG bb_auth_string

RUN apt-get update
RUN apt-get install -y zip moreutils

RUN pip install -U pip wheel
RUN pip install -U awscli boto3>=1.9.2 \
        pytest pytest-mock pytest-xdist pytest-cov \
        redis pyyaml docker jsonschema

WORKDIR /opt/workdir

ENV PATH /opt/workdir/pipeline-scripts:$PATH
ENV PYTHONPATH /opt/workdir/python-testutils:$PYTHONPATH


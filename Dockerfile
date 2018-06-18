FROM homeassistant/home-assistant

LABEL maintainer="Sam Johnston <samj@samj.net>"

USER root
COPY entity.py.patch .
RUN patch -p0 /usr/local/lib/python3.6/site-packages/pydaikin/entity.py entity.py.patch

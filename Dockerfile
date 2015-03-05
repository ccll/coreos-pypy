FROM gliderlabs/alpine

RUN if [ ! -d /home/core ] ; then mkdir -p /home/core ; fi

ENV PYPY pypy-2.5.0-linux64

ADD https://bitbucket.org/pypy/pypy/downloads/${PYPY}.tar.bz2 /home/core/${PYPY}.tar.bz2

RUN cd /home/core ; tar -xf ${PYPY}.tar.bz2 ; mv ${PYPY} pypy

VOLUME /home/host-core

ADD copy-to-coreos.sh /

CMD /copy-to-coreos.sh


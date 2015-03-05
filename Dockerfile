FROM busybox

RUN if [ ! -d /home/core ] ; then mkdir -p /home/core ; fi

ENV PYPY pypy-2.5.0-linux64

ADD https://bitbucket.org/pypy/pypy/downloads/${PYPY}.tar.bz2 /home/core/pypy

VOLUME /home/host-core

ADD copy-to-coreos.sh /

CMD /copy-to-coreos.sh


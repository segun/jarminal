#! /bin/bash

DESTDIR=$1
echo ${DESTDIR}

install -d -m 755 ${DESTDIR}/usr/bin
install -d -m 755 ${DESTDIR}/$HOME/.jarminal
install -d -m 755 ${DESTDIR}/etc

install -m 755 build/usr/bin/* ${DESTDIR}/usr/bin/
install -m 755 build/etc/* ${DESTDIR}/etc

#! /bin/bash

DESTDIR=$1
echo ${DESTDIR}

install -d -m 755 ${DESTDIR}/usr/bin
install -d -m 755 ${DESTDIR}/etc
install -d -m 755 ${DESTDIR}/usr/local/man/man1

install -m 755 build/usr/bin/* ${DESTDIR}/usr/bin/
install -m 755 build/etc/* ${DESTDIR}/etc
install -m 755 build/usr/local/man/man1/jarminal.1 ${DESTDIR}/usr/local/man/man1/

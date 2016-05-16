#!/bin/sh -ex

cd pgpool2
ln -s ../pgpool2-deb/debian .

patch -p0 < ../pgpool2-deb/bug152.patch

debuild -b -us -uc

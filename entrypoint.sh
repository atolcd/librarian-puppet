#!/bin/sh

uid=$(stat -c %u /puppet)
gid=$(stat -c %g /puppet)

sed -i -r "s/foo:x:\d+:\d+:/foo:x:$uid:$gid:/g" /etc/passwd
sed -i -r "s/bar:x:\d+:/bar:x:$gid:/g" /etc/group

su-exec foo:bar $@
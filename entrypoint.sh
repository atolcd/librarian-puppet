#!/bin/sh

uid=$(stat -c %u /puppet)
gid=$(stat -c %g /puppet)

sed -r "s/foo:x:\d+:\d+:/foo:x:$uid:$gid:/g" /etc/passwd > /etc/passwd
sed -r "s/bar:x:\d+:/bar:x:$gid:/g" /etc/group > /etc/group

su-exec foo:bar $@
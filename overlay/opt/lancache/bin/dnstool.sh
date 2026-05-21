#!/bin/sh

set -a
. /usr/local/etc/lancache/lancache-dns/lancache-dns.conf
. /usr/local/etc/lancache/lancache.conf
set +a

/usr/local/bin/dnstool generate lancache-dns

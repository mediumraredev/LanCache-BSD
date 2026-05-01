#!/bin/sh

set -a 
. /usr/local/etc/lancache/lancache-dns/lancache-dns.conf
. /usr/local/etc/lancache/lancache.conf
set +a 

dnstool generate lancache-dns

#(set -a; . /usr/local/etc/lancache/lancache-dns/lancache-dns.conf; . /usr/local/etc/lancache/lancache.conf; dnstool generate lancache-dns)

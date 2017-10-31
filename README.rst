Docker image with ISC DHCP server based on latest Alpine
========================================================

Docker image with ISC DHCP server based on latest Alpine

How to build
------------

Run ``docker build -t aryklein/isc-dhcp:alpine .``

How to use
----------

The most common use-case is to provide DHCP service to multiple networks. For that
you need to modify the ``dhcpd.conf`` file and the include files on the ``dhcpd.d``
directory.

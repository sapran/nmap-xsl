# nmap-xsl
Various XSL templates to manipulate data from NMap XML reports

## Usage

``nmap ... -oX nmap.xml``

then

``xsltproc <template> nmap.xml``

## Templates

http-services.xsl - extract hosts with open HTTP services

open-ports.xsl - extract all open ports

services.xsl - extract all TCP and UDP services

os-types.xsl - extract OS types

os-versions.xsl - extract hosts and OS versions

vulnerabilities.xsl - extract hosts vulnerable according to NSE checks

windows-xp.xsl - extract Windows XP hosts
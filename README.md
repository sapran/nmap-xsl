# nmap-xsl
Various XSL templates to manipulate data from NMap XML reports

## Usage

``nmap ... -oX nmap.xml``

then

``xsltproc <template> nmap.xml``

## Templates

nmap-http-services.xsl - extract hosts with open HTTP services

nmap-open-ports.xsl - extract all open ports

nmap-os-version.xsl - extract hosts and OS versions

nmap-vulnerable-hosts.xsl - extract hosts vulnerable according to NSE checks

nmap-windows-xp.xsl - extract Windows XP hosts
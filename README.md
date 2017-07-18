# nmap-xsl
Various XSL templates to manipulate data from NMap XML reports

## Usage
``nmap ... -oX nmap.xml``
then
``xsltproc <template> nmap.xml``
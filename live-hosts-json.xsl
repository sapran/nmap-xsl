<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
{
<xsl:for-each select="host/hostnames/hostname">
"<xsl:value-of select="@name"/>": "<xsl:value-of select="../../address/@addr"/>",
</xsl:for-each>
}
</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
	<xsl:for-each select="host/os/osmatch/osclass">
		<xsl:value-of select="../../../address/@addr" />;<xsl:value-of select="../../../hostnames/hostname[@type='user']/@name"/>;<xsl:value-of select="@vendor"/>;<xsl:value-of select="@osfamily"/>;<xsl:value-of select="@osgen"/>
		<xsl:text>&#xa;</xsl:text>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
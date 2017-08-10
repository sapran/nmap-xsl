<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
	<xsl:for-each select="host/os/osmatch">
		<xsl:variable name="os_name" select="@name"/>
			<xsl:value-of select="../../address/@addr" />;<xsl:value-of select="../../hostnames/hostname/@name"/>;<xsl:value-of select="$os_name"/>;<xsl:value-of select="@accuracy"/>
			<xsl:text>%&#xa;</xsl:text>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
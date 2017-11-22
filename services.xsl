<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
    <xsl:for-each select="host">
        <xsl:for-each select="ports/port">
        	<xsl:if test="state/@state = 'open'">
				<xsl:value-of select="../../address/@addr"/>;<xsl:value-of select="../../hostnames/hostname[@type='user']/@name"/>;<xsl:value-of select="@portid"/>/<xsl:value-of select="@protocol"/>;<xsl:value-of select="service/@name" />;<xsl:value-of select="service/@product"/><space xml:space="preserve"> </space><xsl:value-of select="service/@version"/>
	        	<xsl:text>&#xa;</xsl:text>
        	</xsl:if>
    	</xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>

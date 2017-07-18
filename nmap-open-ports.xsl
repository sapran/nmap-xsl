<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
    <xsl:for-each select="host">
        <xsl:for-each select="ports/port">
        	<xsl:if test="state/@state = 'open'">
			<xsl:value-of select="@portid" />/<xsl:value-of select="@protocol" />
	        	<xsl:text>&#xa;</xsl:text>
        	</xsl:if>
    	</xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>

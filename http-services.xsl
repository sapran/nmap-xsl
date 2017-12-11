<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
    <xsl:for-each select="host">
        <xsl:for-each select="ports/port">
			<xsl:if test="state/@state = 'open' and (service/@name = 'http' or service/@name = 'https')">
        		<xsl:if test="../../hostnames/hostname[@type='user']">
                    <xsl:text>http</xsl:text>
                    <xsl:if test="service/@name = 'https' or (service/@name = 'http' and service/@tunnel = 'ssl')">
                        <xsl:text>s</xsl:text>
        			</xsl:if>
                    <xsl:text>://</xsl:text>
        			<xsl:value-of select="../../hostnames/hostname[@type='user']/@name"/>
        			<xsl:if test="@portid != '80' and @portid != '443'">
	        			<xsl:text>:</xsl:text>
	        			<xsl:value-of select="@portid"/>
	        		</xsl:if>
        			<xsl:text>&#xa;</xsl:text>
	        	</xsl:if>
        	</xsl:if>
    	</xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
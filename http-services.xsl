<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
    <xsl:for-each select="host">
        <xsl:for-each select="ports/port">
        	<xsl:if test="state/@state = 'open' and service/@name = 'http'">
        		<xsl:if test="../../hostnames/hostname[@type='user']">
	        		<xsl:if test="@portid = '80'">
	        			<xsl:text>http://</xsl:text>
	        			<xsl:value-of select="../../hostnames/hostname[@type='user']/@name"/>
	        			<xsl:text>&#xa;</xsl:text>
	        		</xsl:if>
	        		<xsl:if test="@portid = '443'">
	        			<xsl:text>https://</xsl:text>
	        			<xsl:value-of select="../../hostnames/hostname[@type='user']/@name"/>
	        			<xsl:text>&#xa;</xsl:text>
	        		</xsl:if>
	        		<xsl:if test="@portid != '80' and @portid != '443'">
	        			<xsl:text>http://</xsl:text>
	        			<xsl:value-of select="../../hostnames/hostname[@type='user']/@name"/>
	        			<xsl:value-of select="portid"/>
	        			<xsl:text>&#xa;</xsl:text>
	        		</xsl:if>
	        	</xsl:if>
        	</xsl:if>
    	</xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>

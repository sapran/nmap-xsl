<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/nmaprun">
	<xsl:for-each select="host/hostscript/script/table/elem[@key='state']">
		<xsl:if test="../elem[@key='state']='VULNERABLE'">
			<xsl:value-of select="../elem[@key='state']"/>;<xsl:value-of select="../../../../address/@addr"/>;<xsl:value-of select="../../../../hostnames/hostname/@name" />;<xsl:value-of select="../@key"/>;<xsl:value-of select="../elem[@key='title']"/>
			<xsl:text>&#xa;</xsl:text>
		</xsl:if>
	</xsl:for-each>
	<xsl:for-each select="host/ports/port/script/table/elem[@key='state']">
		<xsl:if test="contains(../elem[@key='state'], 'VULNERABLE')">
			<xsl:value-of select="../elem[@key='state']"/>;<xsl:value-of select="../../../../../address/@addr"/>:<xsl:value-of select="../../../@portid"/>/<xsl:value-of select="../../../@protocol"/>;<xsl:value-of select="../../../../../hostnames/hostname/@name"/>;<xsl:value-of select="../@key"/>;<xsl:value-of select="../elem[@key='title']"/>
			<xsl:text>&#xa;</xsl:text>
		</xsl:if>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>

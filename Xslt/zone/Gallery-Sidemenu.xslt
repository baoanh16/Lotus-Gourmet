<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="gallery-side-menu">
			<ul class="list-unstyled level-1">
				<xsl:apply-templates select="/ZoneList/Zone" mode="Level-1"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Level-1">
		<li>
			<xsl:if test="count(Zone)>0">
				<xsl:attribute name="class">
					<xsl:text>has-child</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone)>0">
				<ul class="list-unstyled level-2">
					<xsl:apply-templates select="Zone" mode="Level-2"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Level-2">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
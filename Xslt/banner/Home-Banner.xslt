<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="vhs-banner-1">
			<div class="owl-carousel">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</div>
			<div class="button-down">
				<div class="img">
				<img src="/Data/Sites/1/skins/default/img/arrow_down_white.png" alt=""></img>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="item">
			<a href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
			
			<div class="content">
				<h2>
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
				<p>
					<xsl:value-of select="Description"></xsl:value-of></p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
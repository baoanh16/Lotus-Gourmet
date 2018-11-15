<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<div class="slide-for">
			<div class="owl-carousel">
				<xsl:apply-templates select="NewsImages" mode="BigImage"></xsl:apply-templates>
			</div>
		</div>
		<div class="slide-nav">
			<div class="owl-carousel">
				<xsl:apply-templates select="NewsImages" mode="SmallImage"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="BigImage">
		<div class="item">
			<xsl:attribute name="data-hash">
				<xsl:text>gallery-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<p>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="SmallImage">
		
			<a>
				<xsl:attribute name="href">
					<xsl:text>#gallery-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="item">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</a>
	</xsl:template>
</xsl:stylesheet>
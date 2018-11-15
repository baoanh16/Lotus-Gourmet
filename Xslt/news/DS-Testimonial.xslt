<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="vhs-testimonial-1">
			<div class="container-fluid">
				<h2 class="main-title center">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col">
						<div class="owl-carousel">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="item">
			<figure>
				<div class="img-box">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<p>
						<xsl:value-of select="FullContent"></xsl:value-of>
					</p>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>
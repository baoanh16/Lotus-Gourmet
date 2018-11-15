<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="vhs-news-detail-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="content">
							<h2>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							</h2>
							<time>
								<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
							</time>

							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="other-news">
							<h3>related post</h3>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<xsl:if test="position() &lt; 4">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="img">
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
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</a></xsl:if>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="vhs-brand-2">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="brand-detail">
							<div class="owl-carousel">
								<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneDetail"></xsl:apply-templates>
							</div>
						</div>
						<div class="brand-nav">
							<div class="owl-carousel">
								<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneNav"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneDetail">
		<div class="item animated">
			<xsl:attribute name="data-hash">
				<xsl:text>brand-</xsl:text>
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
				<figcaption class="row justify-content-center">
					<div class="col-lg-8">
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<p>
							<xsl:value-of select="Description"></xsl:value-of>
						</p>
							<a class="btn btn-viewmore">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								View more
							</a>
					</div>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneNav">
		<a class="item">
				<xsl:attribute name="href">
					<xsl:text>#brand-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
			<figure>
				<div class="img-box">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="SecondImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				</div>
				<figcaption>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>
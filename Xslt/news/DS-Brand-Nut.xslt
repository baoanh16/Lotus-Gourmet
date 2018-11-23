<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<section>
			<xsl:attribute name="class">
				<xsl:text>nut nut-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() mod 2 = 0">
				<xsl:attribute name="class">
					<xsl:text>nut reverse nut-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="bg-img">
				<xsl:text>/Data/Sites/1/skins/default/img/nuts/bg_</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
				<xsl:text>.png</xsl:text>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<figure class="figure">
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</figure>
					</div>
					<div class="col-lg-6">
						<div class="content">
							<h2>
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<section class="juice-2">
			<xsl:attribute name="bg-img">
				<xsl:text>/Data/Sites/1/skins/default/img/juice/bg_</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
				<xsl:text>.png</xsl:text>
			</xsl:attribute>
			
			<xsl:attribute name="class">
					<xsl:text>juice-</xsl:text>
					<xsl:value-of select="position() + 1"></xsl:value-of>
				</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-6">
						<xsl:if test="position() mod 2 = 1">
							<xsl:attribute name="class">
								<xsl:text>col-12 col-lg-6 offset-lg-6</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<div class="content">
							<div class="block2__title">
								<h2>
									<xsl:value-of select="Title"></xsl:value-of>
								</h2>
							</div>
							<div class="block2__content">
								<p>
									<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
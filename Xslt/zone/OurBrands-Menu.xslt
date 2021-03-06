<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<!-- <h2 class="main-title center">
			<xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>
		</h2> -->
		<div id="fullpage">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="section">
			<div class="container">
				<div class="row item">
					<div class="col-lg-7">
						<div class="imgbox">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
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
						</div>
					</div>
					<div class="col-lg-5">
						<div class="texbox">
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
							</p>
							<a class="btn-viewmore" href="#">
								<xsl:attribute name="href">
									<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
								</xsl:attribute>
							View more
						
						
							
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
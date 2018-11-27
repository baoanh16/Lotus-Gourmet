<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<section class="instantnoodle-1" bg-img="/Data/Sites/1/skins/default/img/instantnoodle/bg_1.png">
				<div class="container">
					<div class="row">
						<div class="col-lg-9 mx-auto">

							<div class="content">
								<h2 class="instantnoodle-title">
									<xsl:value-of select="Title"></xsl:value-of>
								</h2>
								<p class="description">
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
							<figure>
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</figure>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()&gt;1">
			<section class="instantnoodle">
				<xsl:attribute name="bg-img">
					<xsl:text>/Data/Sites/1/skins/default/img/instantnoodle/bg_</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
					<xsl:text>.png</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>instantnoodle in-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="position() = 3 or position() = 5">
					<xsl:attribute name="class">
						<xsl:text>instantnoodle reverse in-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<figure class="figure">
								<img class="img-fluid" src="./img/instantnoodle/d2.png" alt="">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</figure>
						</div>
						<div class="col-lg-5 offset-lg-1">
							<div class="content">
								<h2 class="chocopie-title">
									<xsl:value-of select="Title"></xsl:value-of>
								</h2>
								<p class="description">
									<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
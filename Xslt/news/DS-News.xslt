<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="vhs-news-1">
			<div class="container">
				<h2 class="main-title center">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="row no-gutters hot-news">
				<div class="col-lg-6">
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
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
				<div class="col-lg-6">
					<div class="text">
						<h4 class="content-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<a class="btn btn-red-text">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							View more
						</a>
					</div>
				</div>
			</div>
		</xsl:if>


		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;&lt;div class="col-12"&gt;&lt;div class="owl-carousel"&gt;</xsl:text>
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
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
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<div class="btn btn-red">View more</div>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position()>2">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
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
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<div class="btn btn-red">View more</div>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
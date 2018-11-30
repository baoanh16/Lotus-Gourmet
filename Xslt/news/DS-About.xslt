<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">

		<xsl:if test="position() = 1">
			<section class="vhs-about-1">
				<div class="container">
					<h2 class="main-title center">
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<div class="row">
						<div class="col-12">
							<div class="content">
								<div class="img">
									<img src="/Data/Sites/1/skins/default/img/border_line_1.png"></img>
									<div class="icon-bottom-left">
										<img src="/Data/Sites/1/skins/default/img/border_icon_2.png"></img>
									</div>
									<div class="icon-bottom-right">
										<img src="/Data/Sites/1/skins/default/img/border_icon_1.png"></img>
									</div>
								</div>
								<div class="text">
									<div class="line-top d-lg-none">
										<img src="/Data/Sites/1/skins/default/img/border_line_top.png"></img>
									</div>

									<xsl:apply-templates select="News" mode="AboutNews-1"></xsl:apply-templates>

									<div class="line-bottom d-lg-none">
										<img src="/Data/Sites/1/skins/default/img/border_line_bottom.png"></img>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 2">
			<section class="vhs-about-2">
				<div class="container">
					<h2 class="main-title center">
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<xsl:apply-templates select="News" mode="AboutNews-2"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 3">
			<section class="vhs-about-3">
				<div class="container">
					<h2 class="main-title center">
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select="News" mode="AboutNews-3"></xsl:apply-templates>
						<div class="col-lg-4 d-none d-lg-block order-lg-2">
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
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="AboutNews-1">
		<h3>
			<xsl:value-of select="Title"></xsl:value-of>
		</h3>
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News" mode="AboutNews-2">

		<xsl:if test="position() = 1">
			<div class="row no-gutters item">
				<div class="col-about long">
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
				</div>
				<div class="col-about short">
					<div class="content">
						<h4 class="content-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<div class="desc">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>


		<xsl:if test="position() = 2">
			<div class="row no-gutters item">
				<div class="col-about long order-lg-2">
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
				</div>
				<div class="col-about short order-lg-1">
					<div class="content">
						<h4 class="content-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<div class="desc">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="News" mode="AboutNews-3">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4 order-lg-3"&gt; &lt;div class="content"&gt;</xsl:text>
			<div class="item">
				<span class="number">
					<xsl:value-of select="position()"></xsl:value-of>
				</span>
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
				<div class="text">
					<h4 class="content-title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p class="desc">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4 order-lg-1"&gt; &lt;div class="content"&gt;</xsl:text>
			<div class="item">
				<span class="number">
					<xsl:value-of select="position()"></xsl:value-of>
				</span>
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
				<div class="text">
					<h4 class="content-title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p class="desc">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position()=3 or position()=5">
			<div class="item">
				<span class="number">
					<xsl:value-of select="position()"></xsl:value-of>
				</span>
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
				<div class="text">
					<h4 class="content-title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p class="desc">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt; &lt;/div&gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position()=2">
			<div class="item">
				<span class="number">
					<xsl:value-of select="position()"></xsl:value-of>
				</span>
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
				<div class="text">
					<h4 class="content-title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p class="desc">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
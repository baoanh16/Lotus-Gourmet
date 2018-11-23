<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<section class="chocopie-1" bg-img="./img/chocopie/bg_1.png">
				<xsl:attribute name="class">
					<xsl:text>chocopie-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>

				<xsl:attribute name="bg-img">
					<xsl:text>/Data/Sites/1/skins/default/img/chocopie/bg_</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
					<xsl:text>.png</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row">
						<div class="col-md-11 mx-auto">
							<h2 class="chocopie-title">
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<p class="description">
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<div class="image">
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
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()&gt;1">
			<section class="chocopie-section">
				<xsl:attribute name="bg-img">
					<xsl:text>/Data/Sites/1/skins/default/img/chocopie/bg_</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
					<xsl:text>.png</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>chocopie-section cho-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="position() = 3 or position() = 5">
					<xsl:attribute name="class">
						<xsl:text>chocopie-section reverse cho-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-8 offset-lg-3">
							<xsl:if test="position() = 3 or position() = 5">
								<xsl:attribute name="class">
									<xsl:text>col-12 col-lg-8 offset-lg-1</xsl:text>
								</xsl:attribute>
							</xsl:if>
							<div class="block1">
								<div class="block1__title">
									<h2>
										<xsl:value-of select="Title"></xsl:value-of>
									</h2>
								</div>
								<div class="block1__box">
									<p>
										<xsl:value-of select="BriefContent"></xsl:value-of>
									</p>
									<div class="block1__box__inlineimage">
										<img>
										<xsl:attribute name="src">
											<xsl:value-of select="ImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										</img>
									</div>
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
								<div class="block1__image">
									<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
								</div>
								<div class="block1__thumbnail">
									<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
								</div>
							</div>
						</div>
					</div>
				</div>
				<xsl:if test="position()=5">

					<div class="leaf">
						<div class="leaf-top">
							<img src="/data/sites/1/skins/default/img/chocopie/icon_1.png" alt="">
							</img>
						</div>
						<div class="leaf-bottom">
							<img src="/data/sites/1/skins/default/img/chocopie/icon_2.png" alt="">
							</img>
						</div>
					</div>
				</xsl:if>
			</section>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
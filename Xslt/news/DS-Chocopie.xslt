<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="chocopie-1" bg-img="/Data/Sites/1/skins/default/img/chocopie/bg_1.png">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="main-title center">
									<h2>
										<xsl:value-of select="Title"></xsl:value-of>
									</h2>
								</div>
								<div class="description">
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
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
			</xsl:when>


			<xsl:when test="position() = 2">
				<section class="chocopie-2" bg-img="/Data/Sites/1/skins/default/img/chocopie/bg_2.png">
					<div class="container">
						<div class="row">
							<div class="col-12 col-lg-8 offset-lg-3">
								<div class="block1">
									<div class="block1__title block1__title--classic block1__title--right">
										<h2>
											<xsl:value-of select="Title"></xsl:value-of>
										</h2>
									</div>
									<div class="block1__box block1__box--classic">
										<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
				</section>
			</xsl:when>

			<xsl:when test="position()=3">
				<section class="chocopie-3" bg-img="/Data/Sites/1/skins/default/img/chocopie/bg_3.png">
					<div class="container">
						<div class="row">
							<div class="col-12 col-lg-8 offset-lg-1">
								<div class="block1 block1--reverse">
									<div class="block1__title block1__title--matcha block1__title--left">
										<h2>
											<xsl:value-of select="Title"></xsl:value-of>
										</h2>
									</div>
									<div class="block1__box block1__box--matcha">
										<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
				</section>
			</xsl:when>

			<xsl:when test="position()=4">
				<section class="chocopie-4" bg-img="/Data/Sites/1/skins/default/img/chocopie/bg_4.png">
					<div class="container">
						<div class="row">
							<div class="col-12 col-lg-8 offset-lg-3">
								<div class="block1">
									<div class="block1__title block1__title--classic block1__title--right">
										<h2>
											<xsl:value-of select="Title"></xsl:value-of>
										</h2>
									</div>
									<div class="block1__box block1__box--classic">
										<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
				</section>
			</xsl:when>

			<xsl:when test="position()=5">
				<section class="chocopie-5" bg-img="/Data/Sites/1/skins/default/img/chocopie/bg_5.png">
					<div class="container">
						<div class="row">
							<div class="col-12 col-lg-8 offset-lg-1">
								<div class="block1 block1--reverse">
									<div class="block1__title block1__title--coconut block1__title--left">
										<h2>
											<xsl:value-of select="Title"></xsl:value-of>
										</h2>
									</div>
									<div class="block1__box block1__box--coconut">
										<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
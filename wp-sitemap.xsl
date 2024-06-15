<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html><body><stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" exclude-result-prefixes="sitemap">

	<output method="html" encoding="UTF-8" indent="yes"></output>

	<!--
	  Set variables for whether lastmod, changefreq or priority occur for any url in the sitemap.
	  We do this up front because it can be expensive in a large sitemap.
	  -->
	<variable name="has-lastmod" select="count( /sitemap:urlset/sitemap:url/sitemap:lastmod )"></variable>
	<variable name="has-changefreq" select="count( /sitemap:urlset/sitemap:url/sitemap:changefreq )"></variable>
	<variable name="has-priority" select="count( /sitemap:urlset/sitemap:url/sitemap:priority )"></variable>

	<template match="/">
		
			
				<title>Mapa del sitio XML</title>
				<style>
					
					body {
						font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
						color: #444;
					}

					#sitemap {
						max-width: 980px;
						margin: 0 auto;
					}

					#sitemap__table {
						width: 100%;
						border: solid 1px #ccc;
						border-collapse: collapse;
					}

			 		#sitemap__table tr td.loc {
						/*
						 * URLs should always be LTR.
						 * See https://core.trac.wordpress.org/ticket/16834
						 * and https://core.trac.wordpress.org/ticket/49949
						 */
						direction: ltr;
					}

					#sitemap__table tr th {
						text-align: left;
					}

					#sitemap__table tr td,
					#sitemap__table tr th {
						padding: 10px;
					}

					#sitemap__table tr:nth-child(odd) td {
						background-color: #eee;
					}

					a:hover {
						text-decoration: none;
					}

				</style>
			
			
				<div id="sitemap">
					<div id="sitemap__header">
						<h1>Mapa del sitio XML</h1>
						<p>Este mapa de sitio XML lo genera WordPress para hacer que tu contenido sea m&aacute;s visible para los motores de b&uacute;squeda.</p>
						<p><a href="https://www.sitemaps.org/">Aprende m&aacute;s sobre de los mapas del sitio XML.</a></p>
					</div>
					<div id="sitemap__content">
						<p class="text">N&uacute;mero de URLs en este mapa del sitio XML: <value-of select="count( sitemap:urlset/sitemap:url )"></value-of>.</p>
						<table id="sitemap__table">
							<thead>
								<tr>
									<th class="loc">URL</th>
									<if test="$has-lastmod">
										<th class="lastmod">&Uacute;ltima modificaci&oacute;n</th>
									</if>
									<if test="$has-changefreq">
										<th class="changefreq">Frecuencia de cambio</th>
									</if>
									<if test="$has-priority">
										<th class="priority">Prioridad</th>
									</if>
								</tr>
							</thead>
							<tbody>
								<for-each select="sitemap:urlset/sitemap:url">
									<tr>
										<td class="loc"><a href="/%7Bsitemap:loc%7D"><value-of select="sitemap:loc"></value-of></a></td>
										<if test="$has-lastmod">
											<td class="lastmod"><value-of select="sitemap:lastmod"></value-of></td>
										</if>
										<if test="$has-changefreq">
											<td class="changefreq"><value-of select="sitemap:changefreq"></value-of></td>
										</if>
										<if test="$has-priority">
											<td class="priority"><value-of select="sitemap:priority"></value-of></td>
										</if>
									</tr>
								</for-each>
							</tbody>
						</table>
					</div>
				</div>
			
		
	</template>
</stylesheet>

<!-- Cached by WP-Optimize - https://getwpo.com - Last modified: 15 de June de 2024 15:05 (Europe/Madrid UTC:2) -->
</body></html>
<!-- Powered by Staatic (https://staatic.com/) -->
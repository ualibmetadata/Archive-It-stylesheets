<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
    
    <!-- V.01: June 2013. Bibliographic Services, University of Alberta Libraries -->
    <!-- Outputs a text file listing all *document* identifiers (URLs) contained in an AI feed -->
    
    <xsl:import href="variables.xsl"/>

    <xsl:output method="text"/>
    
    <xsl:template match="archiveit-feed">
        <xsl:apply-templates select="//document-metadatum/url"/>
    </xsl:template>
    
    <xsl:template match="//document-metadatum/url">
        <xsl:value-of select="."/>
        <xsl:value-of select="$newline"/>
    </xsl:template>

</xsl:stylesheet>
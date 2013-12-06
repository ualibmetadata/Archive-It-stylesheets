<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
    
    <!-- V.01: June 2013. Bibliographic Services, University of Alberta Libraries -->
    <!-- Extracts all *seed* identifiers (URLs) in an Archive-It  or OAI-PMH feed -->
    <!-- Outputs a delimiter-separated values text file containing URLs
        and AI metadata fields -->
    
    <xsl:import href="variables.xsl"/>
    
    <xsl:output method="text"/>
    
    <xsl:template match="archiveit-feed">
        <xsl:value-of select="$metadata_fields"/>
        <xsl:apply-templates select="//seed/url"/>
    </xsl:template>
    
    <xsl:template match="//seed/url">
        <xsl:value-of select="."/>
        <xsl:value-of select="$newline"/>
    </xsl:template>
    

</xsl:stylesheet>
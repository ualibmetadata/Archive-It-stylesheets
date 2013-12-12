<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl">
    
    
    <xsl:import href="variables.xsl"/>
    <xsl:output method="text"/>
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>Outputs a text file listing all identifiers (URLs) contained either in an
                Archive-It or OAI-PMH feed. Document metadata is not currently available from OAI feeds, so I
                did not considered that when creating this spreadsheet.</xd:p>
            <xd:p><xd:b>First version created on:</xd:b>June 2013</xd:p>
            <xd:p><xd:b>Author:</xd:b>Mariana Paredes-Olea, Bibloiographic Services, University of
                Alberta Libraries.</xd:p>            
        </xd:desc>
    </xd:doc>
    
    <xsl:template match="OAI-PMH">
            <xsl:apply-templates select="//dc:identifier"/>
    </xsl:template>
    
    <xsl:template match="archiveit-feed">
        <xsl:apply-templates select="//seed/url"/>
    </xsl:template>

    <xsl:template match="//dc:identifier">
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>
    </xsl:template>
    
    <xsl:template match="//seed/url">
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>
    </xsl:template>

</xsl:stylesheet>
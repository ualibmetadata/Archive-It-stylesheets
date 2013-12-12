<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl">
    
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>Ccntains common variables to be imported by OAI and AI feed stylesheets.</xd:p>
            <xd:p><xd:b>First version created on:</xd:b> June 2013</xd:p>
            <xd:p><xd:b>Author:</xd:b>Mariana Paredes-Olea, Bibloiographic Services, University of
                Alberta Libraries.</xd:p>            
        </xd:desc>
    </xd:doc>

    
    <xsl:variable name="tab">
        <xsl:text>&#x09;</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="newline">
        <xsl:text>&#xa;</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="metadata_fields">
        <xsl:text>URL</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Title</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Creator</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Subject</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Description</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Publisher</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Contributor</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Date</xsl:text>
        <xsl:value-of select="$tab"/>                
        <xsl:text>Type</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Format</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Identifier</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Source</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Relation</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Coverage</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Rights</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Collector</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:text>Language</xsl:text>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$newline"/>
    </xsl:variable>
    
</xsl:stylesheet>
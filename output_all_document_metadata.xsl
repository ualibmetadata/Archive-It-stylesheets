<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
    <!ENTITY % character_entities SYSTEM "./characters/character_entities.dtd">
    %character_entities;
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl">    
    
    <xsl:import href="variables.xsl"/>
    <xsl:import href="characters/character_map.xsl"/>
    
    <xsl:output method="text" xml:space="default" omit-xml-declaration="yes" use-character-maps="entities" />
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>Extracts all *document-level* metadata from Archive-It feed. Outputs data as
                delimiter-separated (tab-separated) values text file. Result file can be imported as
                spreadsheet for metadata editing and imported into AI to replace or add to existing
                web archive metadata. Stylesheet can be easily modified to extract *document*
                data.</xd:p>
            <xd:p><xd:b>First version created on:</xd:b> June 2013</xd:p>
            <xd:p><xd:b>Author:</xd:b>Mariana Paredes-Olea, Bibloiographic Services, University of
                Alberta Libraries.</xd:p>
            <xd:p><xd:b>Future work:</xd:b>
                <xd:ul>
                    <xd:li>delimiters are currently processed by manual additions of
                        characters; this should be changed to improve flexibility of templates.</xd:li>
                    <xd:li>improve character entities and unicode symbols output</xd:li>
                    <xd:li>existing metadata is currently output in separate lines; this creates a lengthier
                        spreadsheet but does not affect the result of the bulk import into AI and
                        provides extra blank spaces to add values. If desired, this stylesheet can
                        be enhanced to print all first instances of child elements into a single
                        line, all second instances of child elements in second line, and so on
                        (print value of element[1], then all element[2], element[3], etc.).</xd:li>                    
                </xd:ul>
            </xd:p>
        </xd:desc>
    </xd:doc>
    
    
    <xd:doc>
        <xd:desc>Select document-level metadata and apply template to processes document URLs.</xd:desc>
    </xd:doc>
   <xsl:template match="archiveit-feed">       
        <xsl:value-of select="$metadata_fields"/>
       <xsl:apply-templates select="//document-metadatum"/>
    </xsl:template>
    
    <xsl:template match="//document-metadatum">
        <xsl:choose>
            <xsl:when test="metadata[not(node())]">
                <xsl:apply-templates select="url" mode="empty"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="metadata"/>
            </xsl:otherwise>
        </xsl:choose>        
    </xsl:template>
    
    
    <xd:doc>
        <xd:desc>Metadata template calls specific field templates.</xd:desc>
    </xd:doc>
    <xsl:template match="metadata">
        <!--<xsl:variable name="start">
            <xsl:value-of>1</xsl:value-of>
        </xsl:variable>-->
        <!--<xsl:variable name="position" select="child::*[position()]"/>-->
        <!--<xsl:apply-templates select="url"/>-->
        <!--<xsl:value-of select="child::*[position()]"></xsl:value-of>-->
        <!--<xsl:apply-templates select="title"/>-->
        <!--<xsl:if test="$title-position = title[position()]">
            <xsl:value-of select="title"/>
        </xsl:if>-->
        
        <xsl:apply-templates select="title"/>
        <xsl:apply-templates select="creator"/>
        <xsl:apply-templates select="subject"/>
        <xsl:apply-templates select="description"/>
        <xsl:apply-templates select="publisher"/>
        <xsl:apply-templates select="contributor"/>
        <xsl:apply-templates select="date"/>
        <xsl:apply-templates select="type"/>
        <xsl:apply-templates select="format"/>
        <xsl:apply-templates select="identifier"/>
        <xsl:apply-templates select="source"/>
        <xsl:apply-templates select="relation"/>
        <xsl:apply-templates select="coverage"/>
        <xsl:apply-templates select="rights"/>
        <xsl:apply-templates select="collector"/>
        <xsl:apply-templates select="language"/>
        <xsl:apply-templates select="customMetadata"/>
    </xsl:template>
    
    
    <xd:doc>
        <xd:desc>Selects documents with no metadata, prints URL.</xd:desc>
    </xd:doc>
    <xsl:template match="url" name="empty" mode="empty">
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>
    </xsl:template>
    
    <xd:doc>
        <xd:desc>Selects documents' existing metadata, prints URL.</xd:desc>
    </xd:doc>
    <xsl:template match="url" mode="content">
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$tab"/>
    </xsl:template>
    
    
    <xd:doc>
        <xd:desc>Field templates: print resource URL followed by character-delimited metadata.
            Character delimiters are currently printed manually. For future enhancement.</xd:desc>
    </xd:doc>
    <xsl:template match="title">
        <xsl:param name="title-position" select="position()"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>
        <!--<xsl:choose>
            <xsl:when test="$title-position eq 1">
               <xsl:value-of select="." disable-output-escaping="yes"/>                
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>-->        
    </xsl:template>
    
    <xsl:template match="creator">        
        <xsl:param name="creator-position" select="creator[position()]"/>
        <xsl:variable name="tabnum" select="1"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>
    </xsl:template>
    
    <xsl:template match="subject">
        <xsl:param name="subject-position" select="subject[position()]"/>
        <xsl:variable name="tabnum" select="2"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="description">
        <xsl:param name="description-position" select="description[position()]"/>
        <xsl:variable name="tabnum" select="3"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="publisher">
        <xsl:param name="publisher-position" select="publisher[position()]"/>
        <xsl:variable name="tabnum" select="4"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="contributor">
        <xsl:param name="contributor-position" select="contributor[position()]"/>
        <xsl:variable name="tabnum" select="5"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="date">
        <xsl:param name="date-position" select="date[position()]"/>
        <xsl:variable name="tabnum" select="6"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="type">
        <xsl:param name="type-position" select="type[position()]"/>
        <xsl:variable name="tabnum" select="7"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="format">
        <xsl:param name="format-position" select="format[position()]"/>
        <xsl:variable name="tabnum" select="8"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="identifier">
        <xsl:param name="identifier-position" select="identifier[position()]"/>
        <xsl:variable name="tabnum" select="9"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>    
    </xsl:template>
    
    <xsl:template match="source">
        <xsl:param name="source-position" select="source[position()]"/>
        <xsl:variable name="tabnum" select="10"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="relation">
        <xsl:param name="relation-position" select="relation[position()]"/>
        <xsl:variable name="tabnum" select="11"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="coverage">
        <xsl:param name="coverage-position" select="coverage[position()]"/>
        <xsl:variable name="tabnum" select="12"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="rights">
        <xsl:param name="rights-position" select="rights[position()]"/>
        <xsl:variable name="tabnum" select="13"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="collector">
        <xsl:param name="collector-position" select="collector[position()]"/>
        <xsl:variable name="tabnum" select="14"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="language">
        <xsl:param name="language-position" select="language[position()]"/>
        <xsl:variable name="tabnum" select="15"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    <xsl:template match="customMetadata">
        <xsl:param name="customMetadata-position" select="customMetadata[position()]"/>
        <xsl:variable name="tabnum" select="16"/>
        <xsl:apply-templates select="../../url" mode="content"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="$tab"/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <xsl:value-of select="$newline"/>        
    </xsl:template>
    
    
    <!--<xsl:template match="metadata">
        
        <xsl:variable name="count-title">
            <xsl:value-of select="number(title)"/>
        </xsl:variable>
        
        <xsl:variable name="count-creator">
            <xsl:value-of select="number(creator)"/>
        </xsl:variable>
        
        <xsl:variable name="count-subject">
            <xsl:value-of select="number(subject)"/>
        </xsl:variable>
        
        <xsl:variable name="count-description">
            <xsl:value-of select="number(description)"/>
        </xsl:variable>
        
        <xsl:variable name="count-publisher">
            <xsl:value-of select="number(publisher)"/>
        </xsl:variable>
        
        <xsl:variable name="count-contributor">
            <xsl:value-of select="number(contributor)"/>
        </xsl:variable>
        
        <xsl:variable name="count-date">
            <xsl:value-of select="number(date)"/>
        </xsl:variable>
        
        <xsl:variable name="count-type">
            <xsl:value-of select="number(type)"/>
        </xsl:variable>
        
        <xsl:variable name="count-format">
            <xsl:value-of select="number(format)"/>
        </xsl:variable>
        
        <xsl:variable name="count-identifier">
            <xsl:value-of select="number(identifier)"/>
        </xsl:variable>
        
        <xsl:variable name="count-source">
            <xsl:value-of select="number(source)"/>
        </xsl:variable>
        
        <xsl:variable name="count-relation">
            <xsl:value-of select="number(relation)"/>
        </xsl:variable>
        
        <xsl:variable name="count-coverage">
            <xsl:value-of select="number(coverage)"/>
        </xsl:variable>
        
        <xsl:variable name="count-rights">
            <xsl:value-of select="number(rights)"/>
        </xsl:variable>
        
        <xsl:variable name="count-collector">
            <xsl:value-of select="number(collector)"/>
        </xsl:variable>
        
        <xsl:variable name="count-language">
            <xsl:value-of select="number(language)"/>
        </xsl:variable>
        
        <xsl:variable name="count-customMetadata">
            <xsl:value-of select="number(customMetadata)"/>
        </xsl:variable>
        
        <xsl:for-each select="url">
            <xsl:apply-templates select="url"/>
        </xsl:for-each>
        <xsl:apply-templates select="url"/>
        <xsl:apply-templates select="creator"/>
        <xsl:apply-templates select="subject"/>
        <xsl:apply-templates select="description"/>
        <xsl:apply-templates select="publisher"/>
        <xsl:apply-templates select="contributor"/>
        <xsl:apply-templates select="date"/>
        <xsl:apply-templates select="type"/>
        <xsl:apply-templates select="format"/>
        <xsl:apply-templates select="identifier"/>
        <xsl:apply-templates select="source"/>
        <xsl:apply-templates select="relation"/>
        <xsl:apply-templates select="coverage"/>
        <xsl:apply-templates select="rights"/>
        <xsl:apply-templates select="collector"/>
        <xsl:apply-templates select="language"/>
        <xsl:apply-templates select="customMetadata"/>
    </xsl:template>-->

</xsl:stylesheet>
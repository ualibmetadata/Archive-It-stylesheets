<?xml version="1.0" encoding="UTF-8"?>	
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:ual="http://ualberta.ca/ual"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" 
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl">
    
    
   <xd:doc>
       <xd:p><xd:b>In progress. </xd:b>Transforms AI Feed into Simple DC XML. The contents of some value standards such as
           IANA MIME types, ISO 3166-1, ISO 639-2, etc., have been added into the stylesheet to
           facilitate proper mapping of equivalent values to the proper simple DC elements.</xd:p>
       <xd:p><xd:b>First version created on:</xd:b>April 2013</xd:p>
       <xd:p><xd:b>Adapted by:</xd:b>Mariana Paredes-Olea, Bibloiographic Services, University of
           Alberta Libraries.</xd:p>
   </xd:doc>
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/dcmiType.xsl"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/mimeType.xsl"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/csdgm.xsl"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/forms.xsl"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/iso3166-1.xsl"/>
    <xsl:include href="http://www.loc.gov/standards/mods/inc/iso639-2.xsl"/>
    
    <!-- Do you have a Handle server?  If so, specify the base URI below including the trailing slash a la: http://hdl.loc.gov/ -->
    <!--<xsl:variable name="handleServer">
		<xsl:text>http://hdl.loc.gov/</xsl:text>
    </xsl:variable>-->
    
    <xsl:template match="*[not(node())]"/> <!-- strip empty DC elements that are output by tools like ContentDM -->
    <!--<xsl:template match="/">
        <xsl:if test="sru_dc:dcCollection">
            <xsl:apply-templates select="sru_dc:dcCollection"/>
        </xsl:if>
        <xsl:if test="sru_dc:dc">
            <xsl:apply-templates select="sru_dc:dc"/>
        </xsl:if>
        <xsl:if test="oai_dc:dc">
            <xsl:apply-templates/>
        </xsl:if>
        <xsl:apply-templates/>
    </xsl:template>-->
    <xsl:template match="/">        
        <DescriptionSet>
            <xsl:apply-templates select="/archiveit-feed/collections/collection"/> <!-- change if processing seeds or documents -->
        </DescriptionSet>
    </xsl:template>
    <!--<xsl:template match="sru_dc:dc">
		<xsl:param name="dcCollection"/>
		<xsl:choose>
			<xsl:when test="$dcCollection = 'true'">
			    <Description someAtt="-\-\-\-\-\-\-\-\-">
					<xsl:call-template name="dcMain"/>
				</Description>
			</xsl:when>
			<xsl:otherwise>
			    <Description someAtt="-\-\-\-\-\-\-\-\-" xmlns="-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-" 
			        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
			        xsi:schemaLocation="-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-">
					<xsl:call-template name="dcMain"/>
				</Description>
			</xsl:otherwise>
		</xsl:choose>        
    </xsl:template>-->
    <xsl:template match="/archiveit-feed/collections/collection"> <!-- mpo: check ual namespace -->
        <Description
            xmlns:dc="http://purl.org/dc/elements/1.1/"
            xmlns:ual="http://ualberta.ca/ual"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://dublincore.org/schemas/xmls/simpledc20021212.xsd">
            <xsl:call-template name="dcMain"/>
        </Description>
    </xsl:template>
    <xsl:template name="dcMain">
        <xsl:apply-templates select="metadata/title"/>
        <xsl:apply-templates select="name"/> <!-- collection/name -->
        <xsl:apply-templates select="metadata/creator"/>
        <xsl:apply-templates select="metadata/contributor | metadata/collector"/>
        <xsl:apply-templates select="../../organization"/> <!-- archiveit-feed/organization -->
        <xsl:apply-templates select="metadata/type"/>
        <xsl:apply-templates select="metadata/subject"/>
        <xsl:apply-templates select="metadata/coverage"/>
        <xsl:apply-templates select="metadata/description"/>
        <xsl:apply-templates select="metadata/publisher"/>
        <xsl:apply-templates select="metadata/date"/>
        <xsl:apply-templates select="metadata/format"/>
        <xsl:apply-templates select="metadata/identifier"/>
        <xsl:apply-templates select="id"/> <!-- collection/id -->
        <xsl:apply-templates select="metadata/source"/>
        <xsl:apply-templates select="metadata/relation"/>
        <xsl:apply-templates select="metadata/language"/>
        <xsl:apply-templates select="metadata/rights"/>
        <!--<xsl:apply-templates select="metadata/customMetadata"/>-->
    </xsl:template>
    <xsl:template match="title">
        <dc:title><xsl:apply-templates/></dc:title>
    </xsl:template>
    <xsl:template match="name" name="name"> <!-- collection/name (contains collection title as well) -->
        <dc:title><xsl:value-of select="."/></dc:title>
    </xsl:template>
    <xsl:template match="creator">
        <dc:creator><xsl:apply-templates/></dc:creator>
    </xsl:template>
    <xsl:template match="subject">
        <dc:subject><xsl:apply-templates/></dc:subject>
    </xsl:template>
    <xsl:template match="description">
        <dc:description><xsl:apply-templates/></dc:description>
    </xsl:template>
    <xsl:template match="publisher">
        <dc:publisher><xsl:apply-templates/></dc:publisher>
    </xsl:template>
    <xsl:template match="contributor | collector | organization">
        <dc:contributor><xsl:apply-templates/></dc:contributor>
    </xsl:template>
    <xsl:template match="date">
        <dc:date><xsl:apply-templates/></dc:date>
    </xsl:template>
    <xsl:template match="type">
        <!--2.0: Variable test for any dc:type with value of collection for mods:typeOfResource -->
        <!--<xsl:variable name="collection">
            <xsl:if test="../type[string(text()) = 'collection' or string(text()) = 'Collection']">true</xsl:if>
        </xsl:variable>-->
        <xsl:choose>
            <xsl:when test="contains(text(), 'Collection') or contains(text(), 'collection')">
                <dc:type><xsl:text>Collection</xsl:text></dc:type>
            </xsl:when>
            <xsl:otherwise>
                <!-- based on DCMI Type Vocabulary as of 2012-08-09 at http://dublincore.org/documents/dcmi-type-vocabulary/ ...  see also the included dcmiType.xsl serving as variable $types -->
                <xsl:choose>
                    <xsl:when test="string(text()) = 'Dataset' or string(text()) = 'dataset'">
                        <dc:type>
                            <xsl:text>Dataset</xsl:text>
                        </dc:type>                        
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Event' or string(text()) = 'event'">
                        <dc:type>
                            <xsl:text>Event</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Image' or string(text()) = 'image'">
                        <dc:type>
                            <xsl:text>Image</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'InteractiveResource' or string(text()) = 'interactiveresource' or string(text()) = 'Interactive Resource' or string(text()) = 'interactive resource' or string(text()) = 'interactiveResource'">
                        <dc:type>
                            <xsl:text>InteractiveResource</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'MovingImage' or string(text()) = 'movingimage' or string(text()) = 'Moving Image' or string(text()) = 'moving image' or string(text()) = 'movingImage'">
                        <dc:type>
                            <xsl:text>MovingImage</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'PhysicalObject' or string(text()) = 'physicalobject' or string(text()) = 'Physical Object' or string(text()) = 'physical object' or string(text()) = 'physicalObject'">
                        <dc:type>
                            <xsl:text>PhysicalObject</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Service' or string(text()) = 'service'">
                        <dc:type>
                            <xsl:text>Service</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Software' or string(text()) = 'software'">
                        <dc:type>
                            <xsl:text>Software</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Sound' or string(text()) = 'sound'">
                        <dc:type>
                            <xsl:text>Sound</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'StillImage' or string(text()) = 'stillimage' or string(text()) = 'Still Image' or string(text()) = 'still image' or string(text()) = 'stillImage'">
                        <dc:type>
                            <xsl:text>StillImage</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:when test="string(text()) = 'Text' or string(text()) = 'text'">
                        <dc:type>
                            <xsl:text>Text</xsl:text>
                        </dc:type>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="not(string($types) = text())">
                            <!--<typeOfResource>
                                <xsl:text>mixed material</xsl:text>
                                </typeOfResource>-->
                            <dc:type>
                                <xsl:value-of select="lower-case(.)"/>
                            </dc:type>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>   

    <xsl:template match="format">
        <dc:format>
            <xsl:apply-templates/>
        </dc:format>
    </xsl:template>
    <xsl:template match="identifier">
        <dc:identifier><xsl:value-of select="."/></dc:identifier>
       <!-- <xsl:if test="starts-with(text(), 'http://')">
            <dc:identifier><xsl:value-of select="."/></dc:identifier>
        </xsl:if>            
        <xsl:variable name="iso-3166Check">
            <xsl:value-of select="substring(text(), 1, 2)"/>
        </xsl:variable>
        <identifier>
            <xsl:attribute name="type">
                <xsl:choose>
                    <!-\- handled by location/url -\->
                    <xsl:when test="starts-with(text(), 'http://') and (not(contains(text(), $handleServer) or not(contains(substring-after(text(), 'http://'), 'hdl'))))">
                        <xsl:text>uri</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(),'urn:hdl') or starts-with(text(),'hdl') or starts-with(text(),'http://hdl.')">
                        <xsl:text>hdl</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(), 'doi')">
                        <xsl:text>doi</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(), 'ark')">
                        <xsl:text>ark</xsl:text>
                    </xsl:when>
                    <xsl:when test="contains(text(), 'purl')">
                        <xsl:text>purl</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(), 'tag')">
                        <xsl:text>tag</xsl:text>
                    </xsl:when>
                    <!-\-NOTE:  will need to update for ISBN 13 as of January 1, 2007, see XSL tool at http://isbntools.com/ -\->
                    <xsl:when test="(starts-with(text(), 'ISBN')  or starts-with(text(), 'isbn'))  or ((string-length(text()) = 13) and contains(text(), '-') and (starts-with(text(), '0') or starts-with(text(), '1'))) or ((string-length(text()) = 10) and (starts-with(text(), '0') or starts-with(text(), '1')))">
                        <xsl:text>isbn</xsl:text>
                    </xsl:when>
                    <xsl:when test="(starts-with(text(), 'ISRC') or starts-with(text(), 'isrc')) or ((string-length(text()) = 12) and (contains($iso3166-1, $iso-3166Check))) or ((string-length(text()) = 15) and (contains(text(), '-') or contains(text(), '/')) and contains($iso3166-1, $iso-3166Check))">
                        <xsl:text>isrc</xsl:text>
                    </xsl:when>
                    <xsl:when test="(starts-with(text(), 'ISMN') or starts-with(text(), 'ismn')) or starts-with(text(), 'M') and ((string-length(text()) = 11) and contains(text(), '-') or string-length(text()) = 9)">
                        <xsl:text>ismn</xsl:text>
                    </xsl:when>
                    <xsl:when test="(starts-with(text(), 'ISSN') or starts-with(text(), 'issn')) or ((string-length(text()) = 9) and contains(text(), '-') or string-length(text()) = 8)">
                        <xsl:text>issn</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(), 'ISTC') or starts-with(text(), 'istc')">
                        <xsl:text>istc</xsl:text>
                    </xsl:when>
                    <xsl:when test="(starts-with(text(), 'UPC') or starts-with(text(), 'upc')) or (string-length(text()) = 12 and not(contains(text(), ' ')) and not(contains($iso3166-1, $iso-3166Check)))">
                        <xsl:text>upc</xsl:text>
                    </xsl:when>
                    <xsl:when test="(starts-with(text(), 'SICI') or starts-with(text(), 'sici')) or ((starts-with(text(), '0') or starts-with(text(), '1')) and (contains(text(), ';') and contains(text(), '(') and contains(text(), ')') and contains(text(), '&lt;') and contains(text(), '&gt;')))">
                        <xsl:text>sici</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with(text(), 'LCCN') or starts-with(text(), 'lccn')">
                        <!-\- probably can't do this quickly or easily without regexes and XSL 2.0 -\->
                        <xsl:text>lccn</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>local</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:choose>
          		<xsl:when test="starts-with(text(),'urn:hdl') or starts-with(text(),'hdl') or starts-with(text(),$handleServer)">
          			<xsl:value-of select="concat('hdl:',substring-after(text(),$handleServer))"/>
          		</xsl:when>
          		<xsl:otherwise>
          			<xsl:apply-templates/>
          		</xsl:otherwise>
            </xsl:choose>
        </identifier>-->
    </xsl:template>
    <xsl:template match="id" name="id"> <!-- collection/id (archiveit identifier) -->
        <dc:identifier><xsl:value-of select="."/></dc:identifier>
    </xsl:template>
    <xsl:template match="source">
        <dc:source>
            <xsl:apply-templates/>
        </dc:source>
    </xsl:template>
    <xsl:template match="language">
        <dc:language>
            <xsl:apply-templates/>
        </dc:language>
    </xsl:template>
    <xsl:template match="relation">
        <dc:relation>
			<xsl:apply-templates/>            
        </dc:relation>
    </xsl:template>
    <xsl:template match="coverage">
        <dc:coverage>
            <xsl:apply-templates/>
        </dc:coverage>
    </xsl:template>
    <xsl:template match="rights">
        <dc:rights>
            <xsl:apply-templates/>
        </dc:rights>
    </xsl:template>
    <!--<xsl:template match="customMetadata">
        <xsl:element name="ual:{@name}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>-->
</xsl:stylesheet>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ebucore="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#"
    xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html"
    xmlns:pbcorerdf="http://www.pbcore.org/pbcore/pbcore#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:prov="http://www.w3.org/ns/prov#"
    xmlns:foaf="xmlns.com/foaf/0.1/">

    <xsl:template match="pbcore:pbcoreDescriptionDocument">
        <rdf:Description>

            <xsl:attribute name="rdf:about">
                <xsl:call-template name="aapb-url"/>
            </xsl:attribute>

            <rdf:type rdf:resource="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#EditorialObject"/>
            
            <xsl:apply-templates select="*"/>
            
        </rdf:Description>
    </xsl:template>
    
</xsl:stylesheet>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ebucore="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#"
    xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html"
    xmlns:pbcorerdf="http://www.pbcore.org/pbcore/pbcore#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:prov="http://www.w3.org/ns/prov#"
    xmlns:foaf="xmlns.com/foaf/0.1/">

    <xsl:template name="aapb-url">http://americanarchive.org/catalog/<xsl:value-of select="./pbcore:pbcoreIdentifier[@source='http://americanarchiveinventory.org']"/></xsl:template>

    <xsl:template match="pbcore:pbcoreIdentifier[@source='http://americanarchiveinventory.org']">
        <ebucore:identifier>
            <xsl:value-of select="."/>
        </ebucore:identifier>
    </xsl:template>
    
</xsl:stylesheet>

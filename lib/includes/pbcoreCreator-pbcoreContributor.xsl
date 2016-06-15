<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ebucore="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#"
    xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html"
    xmlns:pbcorerdf="http://www.pbcore.org/pbcore/pbcore#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:prov="http://www.w3.org/ns/prov#"
    xmlns:foaf="xmlns.com/foaf/0.1/">

    <xsl:template match="pbcore:pbcoreCreator">
        <ebucore:hasCreator>
            <rdf:Description>
                <xsl:apply-templates select="*"/>
                <rdf:type rdf:resource="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#Agent"/>
            </rdf:Description>
        </ebucore:hasCreator>
    </xsl:template>

    <xsl:template match="pbcore:pbcoreContributor">
        <ebucore:hasContributor>
            <rdf:Description>
                <xsl:apply-templates select="*"/>
                <rdf:type rdf:resource="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#Agent"/>
            </rdf:Description>
        </ebucore:hasContributor>
    </xsl:template>
    
    <xsl:template match="pbcore:creator|pbcore:contributor">
        <xsl:attribute name="ebucore:agentName"><xsl:value-of select="."/></xsl:attribute>
        <xsl:attribute name="ebucore:hasAffiliation"><xsl:value-of select="@affiliation"/></xsl:attribute>
    </xsl:template>

    <xsl:template match="pbcore:creatorRole|pbcore:contributorRole">
        <xsl:attribute name="ebucore:hasRole"><xsl:value-of select="."/></xsl:attribute>
    </xsl:template>

</xsl:stylesheet>

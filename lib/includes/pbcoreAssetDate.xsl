<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ebucore="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#"
    xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html"
    xmlns:pbcorerdf="http://www.pbcore.org/pbcore/pbcore#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:prov="http://www.w3.org/ns/prov#"
    xmlns:foaf="xmlns.com/foaf/0.1/">

    <!-- Types drawn from RHS of https://github.com/WGBH/AAPB2/blob/master/config/vocab-maps/date-type-map.yml -->

    <xsl:template match="pbcore:pbcoreAssetDate[@dateType='Created']">
        <ebucore:dateCreated>
            <xsl:value-of select="."/>
        </ebucore:dateCreated>
    </xsl:template>

    <xsl:template match="pbcore:pbcoreAssetDate[@dateType='Broadcast']">
        <ebucore:dateBroadcast>
            <xsl:value-of select="."/>
        </ebucore:dateBroadcast>
    </xsl:template>

    <xsl:template match="pbcore:pbcoreAssetDate[@dateType='Revised']">
        <ebucore:dateTODO>
            <xsl:value-of select="."/>
        </ebucore:dateTODO>
    </xsl:template>

    <xsl:template match="pbcore:pbcoreAssetDate[@dateType='Copyright']">
        <ebucore:dateTODO>
            <xsl:value-of select="."/>
        </ebucore:dateTODO>
    </xsl:template>

    <xsl:template match="pbcore:pbcoreAssetDate[@dateType='Date']">
        <ebucore:dateTODO>
            <xsl:value-of select="."/>
        </ebucore:dateTODO>
    </xsl:template>

</xsl:stylesheet>

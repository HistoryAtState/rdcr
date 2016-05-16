<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="name">
            <sch:assert test="doc-available(concat('../issues/', ., '.xml'))">The resource <sch:value-of select="concat(., '.xml')"/> could not be found in the issues folder</sch:assert>
        </sch:rule>
        <sch:rule context="relatedcountry">
            <sch:assert test="doc-available(concat('../articles/', ., '.xml'))">The resource <sch:value-of select="concat(., '.xml')"/> could not be found in the articles folder</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
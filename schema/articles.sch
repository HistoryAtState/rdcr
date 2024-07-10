<?xml version="1.0" encoding="UTF-8"?>
<sch:schema queryBinding="xslt2" xmlns:sch="http://purl.oclc.org/dsdl/schematron"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <sch:ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
    <sch:pattern>
        <sch:rule context="tei:div[@type eq 'timeline']">
            <sch:assert role="warning" test="tei:head[normalize-space(.) ne '']">The timeline entry
                should have a heading</sch:assert>
            <sch:assert role="warning" test="tei:p[normalize-space(.) ne '']">The timeline entry
                should have at least one paragraph</sch:assert>
        </sch:rule>
        <sch:rule context="tei:div[@type eq 'timeline']/tei:head[normalize-space(.) ne '']">
            <sch:assert test="ends-with(string(.), '.')">The timeline entry's heading must end with
                a period</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>

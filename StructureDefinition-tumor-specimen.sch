<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ProfileSpecimenBioprobeCore
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Specimen</sch:title>
    <sch:rule context="f:Specimen">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:collection</sch:title>
    <sch:rule context="f:Specimen/f:collection">
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &gt;= 1">bodySite: minimum cardinality of 'bodySite' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:processing</sch:title>
    <sch:rule context="f:Specimen/f:processing">
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:time[x]) &gt;= 1">time[x]: minimum cardinality of 'time[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:processing/f:time[x] 1</sch:title>
    <sch:rule context="f:Specimen/f:processing/f:time[x]">
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
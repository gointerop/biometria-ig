# Status de Cadastro Biométrico - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status de Cadastro Biométrico**

## Extension: Status de Cadastro Biométrico 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/ext-status-biometrico | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:StatusBiometrico |

Indica o status do cadastro de biometria facial do beneficiário na operadora de saúde.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [Beneficiário com Biometria Facial](StructureDefinition-BeneficiarioBiometria.md)
* Exemplos para este Extensão: [Patient/exemplo-beneficiario](Patient-exemplo-beneficiario.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/ext-status-biometrico)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-status-biometrico.csv), [Excel](StructureDefinition-ext-status-biometrico.xlsx), [Schematron](StructureDefinition-ext-status-biometrico.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-status-biometrico",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-status-biometrico",
  "version" : "0.1.0",
  "name" : "StatusBiometrico",
  "title" : "Status de Cadastro Biométrico",
  "status" : "active",
  "date" : "2026-03-20T20:23:12+00:00",
  "publisher" : "GOInterop Tecnologia LTDA",
  "contact" : [{
    "name" : "GOInterop Tecnologia LTDA",
    "telecom" : [{
      "system" : "url",
      "value" : "https://gointerop.com"
    },
    {
      "system" : "email",
      "value" : "contato@gointerop.com"
    }]
  },
  {
    "name" : "Italo Macedo",
    "telecom" : [{
      "system" : "email",
      "value" : "italo@gointerop.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Claudio Junior",
    "telecom" : [{
      "system" : "email",
      "value" : "claudio@gointerop.com"
    }]
  },
  {
    "name" : "Fernando Araujo",
    "telecom" : [{
      "system" : "email",
      "value" : "fernando@gointerop.com"
    }]
  }],
  "description" : "Indica o status do cadastro de biometria facial do beneficiário na operadora de saúde.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Status de Cadastro Biométrico",
      "definition" : "Indica o status do cadastro de biometria facial do beneficiário na operadora de saúde."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-status-biometrico"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://biometria.gointerop.com/fhir/ValueSet/status-biometrico-vs"
      }
    }]
  }
}

```

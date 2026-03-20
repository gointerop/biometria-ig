# Canal de Autenticação Biométrica - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Canal de Autenticação Biométrica**

## Extension: Canal de Autenticação Biométrica 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:CanalAutenticacaoExt |

Indica o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada: sistema da operadora, sistema do prestador ou aplicativo do beneficiário.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md)
* Exemplos para este Extensão: [AuditEvent/exemplo-autenticacao-atendimento](AuditEvent-exemplo-autenticacao-atendimento.md), [AuditEvent/exemplo-autenticacao-presenca](AuditEvent-exemplo-autenticacao-presenca.md) and [AuditEvent/exemplo-autenticacao-teleatendimento](AuditEvent-exemplo-autenticacao-teleatendimento.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/ext-canal-autenticacao)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-canal-autenticacao.csv), [Excel](StructureDefinition-ext-canal-autenticacao.xlsx), [Schematron](StructureDefinition-ext-canal-autenticacao.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-canal-autenticacao",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao",
  "version" : "0.1.0",
  "name" : "CanalAutenticacaoExt",
  "title" : "Canal de Autenticação Biométrica",
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
  "description" : "Indica o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada: sistema da operadora, sistema do prestador ou aplicativo do beneficiário.",
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
    "expression" : "AuditEvent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Canal de Autenticação Biométrica",
      "definition" : "Indica o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada: sistema da operadora, sistema do prestador ou aplicativo do beneficiário."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://biometria.gointerop.com/fhir/ValueSet/canal-autenticacao-vs"
      }
    }]
  }
}

```

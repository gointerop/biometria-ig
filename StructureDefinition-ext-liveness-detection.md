# Prova de Vida (Liveness Detection) - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prova de Vida (Liveness Detection)**

## Extension: Prova de Vida (Liveness Detection) 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/ext-liveness-detection | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:LivenessDetection |

Indica se a prova de vida passiva (liveness detection) foi executada durante a autenticação biométrica e qual o resultado.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md)
* Exemplos para este Extensão: [AuditEvent/exemplo-autenticacao-atendimento](AuditEvent-exemplo-autenticacao-atendimento.md), [AuditEvent/exemplo-autenticacao-presenca](AuditEvent-exemplo-autenticacao-presenca.md) and [AuditEvent/exemplo-autenticacao-teleatendimento](AuditEvent-exemplo-autenticacao-teleatendimento.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/ext-liveness-detection)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-liveness-detection.csv), [Excel](StructureDefinition-ext-liveness-detection.xlsx), [Schematron](StructureDefinition-ext-liveness-detection.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-liveness-detection",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-liveness-detection",
  "version" : "0.1.0",
  "name" : "LivenessDetection",
  "title" : "Prova de Vida (Liveness Detection)",
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
  "description" : "Indica se a prova de vida passiva (liveness detection) foi executada durante a autenticação biométrica e qual o resultado.",
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
      "short" : "Prova de Vida (Liveness Detection)",
      "definition" : "Indica se a prova de vida passiva (liveness detection) foi executada durante a autenticação biométrica e qual o resultado."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:executado",
      "path" : "Extension.extension",
      "sliceName" : "executado",
      "short" : "Se a prova de vida foi executada",
      "definition" : "Indica se a prova de vida passiva (liveness) foi executada durante o processo de autenticação.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:executado.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:executado.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "executado"
    },
    {
      "id" : "Extension.extension:executado.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:resultado",
      "path" : "Extension.extension",
      "sliceName" : "resultado",
      "short" : "Resultado da prova de vida",
      "definition" : "Resultado da prova de vida passiva executada durante a autenticação biométrica.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:resultado.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:resultado.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "resultado"
    },
    {
      "id" : "Extension.extension:resultado.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://biometria.gointerop.com/fhir/ValueSet/liveness-resultado-vs"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-liveness-detection"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

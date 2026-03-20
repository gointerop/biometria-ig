# Captura Biométrica Facial - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Captura Biométrica Facial**

## Resource Profile: Captura Biométrica Facial 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/CapturaBiometricaFacial | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:CapturaBiometricaFacial |

 
Registro da captura inicial da biometria facial do beneficiário. Corresponde ao Caso de Uso 1: Captura Inicial da Biometria Facial (ANS v5). 

**Usos:**

* Exemplos para este Perfil: [Media/exemplo-captura-biometrica](Media-exemplo-captura-biometrica.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/CapturaBiometricaFacial)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapturaBiometricaFacial.csv), [Excel](StructureDefinition-CapturaBiometricaFacial.xlsx), [Schematron](StructureDefinition-CapturaBiometricaFacial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapturaBiometricaFacial",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/CapturaBiometricaFacial",
  "version" : "0.1.0",
  "name" : "CapturaBiometricaFacial",
  "title" : "Captura Biométrica Facial",
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
  "description" : "Registro da captura inicial da biometria facial do beneficiário. Corresponde ao Caso de Uso 1: Captura Inicial da Biometria Facial (ANS v5).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Media",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Media",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Media",
      "path" : "Media"
    },
    {
      "id" : "Media.status",
      "path" : "Media.status",
      "mustSupport" : true
    },
    {
      "id" : "Media.type",
      "path" : "Media.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/media-type",
          "code" : "photo"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Media.modality",
      "path" : "Media.modality",
      "short" : "Modalidade de captura: biometria facial",
      "mustSupport" : true
    },
    {
      "id" : "Media.subject",
      "path" : "Media.subject",
      "short" : "Beneficiário cuja biometria foi capturada",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.created[x]",
      "path" : "Media.created[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Media.created[x]:createdDateTime",
      "path" : "Media.created[x]",
      "sliceName" : "createdDateTime",
      "short" : "Data e hora da captura biométrica",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.operator",
      "path" : "Media.operator",
      "short" : "Operadora ou prestador que realizou a captura",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude",
        "https://biometria.gointerop.com/fhir/StructureDefinition/PrestadorSaude"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.content",
      "path" : "Media.content",
      "short" : "Dados da imagem facial capturada (base64 ou referência)",
      "mustSupport" : true
    },
    {
      "id" : "Media.content.contentType",
      "path" : "Media.content.contentType",
      "short" : "Tipo MIME da imagem (ex: image/jpeg)",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

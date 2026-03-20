# Autenticação Biométrica Facial - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Autenticação Biométrica Facial**

## Resource Profile: Autenticação Biométrica Facial 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/AutenticacaoBiometricaFacial | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:AutenticacaoBiometricaFacial |

 
Registro de evento de autenticação biométrica facial do beneficiário. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5: autenticação de presença, autenticação de atendimento e autenticação via app. 

**Usos:**

* Exemplos para este Perfil: [AuditEvent/exemplo-autenticacao-atendimento](AuditEvent-exemplo-autenticacao-atendimento.md), [AuditEvent/exemplo-autenticacao-presenca](AuditEvent-exemplo-autenticacao-presenca.md) and [AuditEvent/exemplo-autenticacao-teleatendimento](AuditEvent-exemplo-autenticacao-teleatendimento.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/AutenticacaoBiometricaFacial)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AutenticacaoBiometricaFacial.csv), [Excel](StructureDefinition-AutenticacaoBiometricaFacial.xlsx), [Schematron](StructureDefinition-AutenticacaoBiometricaFacial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AutenticacaoBiometricaFacial",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/AutenticacaoBiometricaFacial",
  "version" : "0.1.0",
  "name" : "AutenticacaoBiometricaFacial",
  "title" : "Autenticação Biométrica Facial",
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
  "description" : "Registro de evento de autenticação biométrica facial do beneficiário. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5: autenticação de presença, autenticação de atendimento e autenticação via app.",
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
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.extension",
      "path" : "AuditEvent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "AuditEvent.extension:canalAutenticacao",
      "path" : "AuditEvent.extension",
      "sliceName" : "canalAutenticacao",
      "short" : "Canal utilizado na autenticação biométrica",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.extension:livenessDetection",
      "path" : "AuditEvent.extension",
      "sliceName" : "livenessDetection",
      "short" : "Resultado da prova de vida passiva (liveness)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/ext-liveness-detection"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.type",
      "path" : "AuditEvent.type",
      "short" : "Tipo de evento de segurança: autenticação",
      "patternCoding" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110114",
        "display" : "User Authentication"
      },
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.subtype",
      "path" : "AuditEvent.subtype",
      "short" : "Subtipo: evento de autenticação biométrica facial",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "short" : "Data e hora do evento de autenticação",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "short" : "0 = sucesso | 4 = erro menor | 8 = erro grave | 12 = erro fatal",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcomeDesc",
      "path" : "AuditEvent.outcomeDesc",
      "short" : "Descrição do resultado da autenticação biométrica",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "AuditEvent.agent:beneficiario",
      "path" : "AuditEvent.agent",
      "sliceName" : "beneficiario",
      "short" : "Beneficiário autenticado",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent:beneficiario.who",
      "path" : "AuditEvent.agent.who",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent:beneficiario.requestor",
      "path" : "AuditEvent.agent.requestor",
      "short" : "true se o beneficiário iniciou a autenticação (ex: app); false se foi o sistema (ex: balcão)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent:sistema",
      "path" : "AuditEvent.agent",
      "sliceName" : "sistema",
      "short" : "Sistema (operadora ou prestador) que realizou a autenticação",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent:sistema.who",
      "path" : "AuditEvent.agent.who",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude",
        "https://biometria.gointerop.com/fhir/StructureDefinition/PrestadorSaude"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent:sistema.requestor",
      "path" : "AuditEvent.agent.requestor",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "short" : "Referências ao template biométrico e captura utilizados",
      "mustSupport" : true
    }]
  }
}

```

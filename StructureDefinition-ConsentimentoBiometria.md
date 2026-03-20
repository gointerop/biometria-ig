# Consentimento para Biometria Facial - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consentimento para Biometria Facial**

## Resource Profile: Consentimento para Biometria Facial 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/ConsentimentoBiometria | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:ConsentimentoBiometria |

 
Consentimento do beneficiário para coleta, armazenamento e uso da biometria facial pela operadora de saúde, conforme exigência da LGPD (Lei 13.709/2018). 

**Usos:**

* Exemplos para este Perfil: [Consent/exemplo-consentimento-biometria](Consent-exemplo-consentimento-biometria.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/ConsentimentoBiometria)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ConsentimentoBiometria.csv), [Excel](StructureDefinition-ConsentimentoBiometria.xlsx), [Schematron](StructureDefinition-ConsentimentoBiometria.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ConsentimentoBiometria",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ConsentimentoBiometria",
  "version" : "0.1.0",
  "name" : "ConsentimentoBiometria",
  "title" : "Consentimento para Biometria Facial",
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
  "description" : "Consentimento do beneficiário para coleta, armazenamento e uso da biometria facial pela operadora de saúde, conforme exigência da LGPD (Lei 13.709/2018).",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "mustSupport" : true
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "privacy"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "short" : "Categoria do consentimento: coleta de dado biométrico sensível (LGPD)",
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "short" : "Beneficiário que concedeu o consentimento",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "short" : "Data e hora em que o consentimento foi concedido",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "short" : "Operadora que recebe o consentimento para uso da biometria",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.policyRule",
      "path" : "Consent.policyRule",
      "short" : "Regra de política aplicada (ex: LGPD Art. 11)",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "short" : "Detalhes das permissões ou restrições do consentimento",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "short" : "Período de validade do consentimento",
      "mustSupport" : true
    }]
  }
}

```

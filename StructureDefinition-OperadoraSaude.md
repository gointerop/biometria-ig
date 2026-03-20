# Operadora de Saúde - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Operadora de Saúde**

## Resource Profile: Operadora de Saúde 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:OperadoraSaude |

 
Operadora de plano de saúde responsável pelo armazenamento e validação da biometria facial dos beneficiários. 

**Usos:**

* Refere a este Perfil: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md), [Captura Biométrica Facial](StructureDefinition-CapturaBiometricaFacial.md) and [Consentimento para Biometria Facial](StructureDefinition-ConsentimentoBiometria.md)
* Exemplos para este Perfil: [Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/OperadoraSaude)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OperadoraSaude.csv), [Excel](StructureDefinition-OperadoraSaude.xlsx), [Schematron](StructureDefinition-OperadoraSaude.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OperadoraSaude",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude",
  "version" : "0.1.0",
  "name" : "OperadoraSaude",
  "title" : "Operadora de Saúde",
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
  "description" : "Operadora de plano de saúde responsável pelo armazenamento e validação da biometria facial dos beneficiários.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Organization.identifier:ansRegistro",
      "path" : "Organization.identifier",
      "sliceName" : "ansRegistro",
      "short" : "Número de registro na ANS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:ansRegistro.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "https://saude.gov.br/fhir/sid/ans-registro-operadora"
    },
    {
      "id" : "Organization.identifier:cnpj",
      "path" : "Organization.identifier",
      "sliceName" : "cnpj",
      "short" : "CNPJ da operadora",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:cnpj.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "https://receita.gov.br/fhir/sid/cnpj"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nome da operadora de saúde",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```

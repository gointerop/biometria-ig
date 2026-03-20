# Beneficiário com Biometria Facial - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beneficiário com Biometria Facial**

## Resource Profile: Beneficiário com Biometria Facial 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:BeneficiarioBiometria |

 
Perfil de beneficiário de plano de saúde com suporte a identificação por biometria facial, conforme norma orientativa ANS v5. 

**Usos:**

* Refere a este Perfil: [Atendimento com Autenticação Biométrica](StructureDefinition-AtendimentoBiometria.md), [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md), [Captura Biométrica Facial](StructureDefinition-CapturaBiometricaFacial.md) and [Consentimento para Biometria Facial](StructureDefinition-ConsentimentoBiometria.md)
* Exemplos para este Perfil: [Patient/exemplo-beneficiario](Patient-exemplo-beneficiario.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/BeneficiarioBiometria)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeneficiarioBiometria.csv), [Excel](StructureDefinition-BeneficiarioBiometria.xlsx), [Schematron](StructureDefinition-BeneficiarioBiometria.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeneficiarioBiometria",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria",
  "version" : "0.1.0",
  "name" : "BeneficiarioBiometria",
  "title" : "Beneficiário com Biometria Facial",
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
  "description" : "Perfil de beneficiário de plano de saúde com suporte a identificação por biometria facial, conforme norma orientativa ANS v5.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:statusBiometrico",
      "path" : "Patient.extension",
      "sliceName" : "statusBiometrico",
      "short" : "Status do cadastro biométrico facial",
      "definition" : "Indica se o beneficiário possui biometria facial cadastrada na operadora.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/ext-status-biometrico"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Identificadores do beneficiário",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:carteirinha",
      "path" : "Patient.identifier",
      "sliceName" : "carteirinha",
      "short" : "Número da carteirinha do plano de saúde",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:carteirinha.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "https://biometria.gointerop.com/fhir/sid/carteirinha-beneficiario"
    },
    {
      "id" : "Patient.identifier:cpf",
      "path" : "Patient.identifier",
      "sliceName" : "cpf",
      "short" : "CPF do beneficiário",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cpf.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "https://saude.gov.br/fhir/sid/cpf"
    },
    {
      "id" : "Patient.identifier:cns",
      "path" : "Patient.identifier",
      "sliceName" : "cns",
      "short" : "Cartão Nacional de Saúde (CNS)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cns.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "https://saude.gov.br/fhir/sid/cns"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Nome do beneficiário",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Data de nascimento",
      "mustSupport" : true
    }]
  }
}

```

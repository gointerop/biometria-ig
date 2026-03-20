# carteirinha-beneficiario - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **carteirinha-beneficiario**

## NamingSystem: carteirinha-beneficiario 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/NamingSystem/carteirinha-beneficiario | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:CarteirinhaBeneficiario |

 
Identificador da carteirinha (cartão de identificação) do beneficiário emitida pela operadora de plano de saúde. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "carteirinha-beneficiario",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://biometria.gointerop.com/fhir/NamingSystem/carteirinha-beneficiario"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "CarteirinhaBeneficiario",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-20",
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
  "description" : "Identificador da carteirinha (cartão de identificação) do beneficiário emitida pela operadora de plano de saúde.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://biometria.gointerop.com/fhir/sid/carteirinha-beneficiario",
    "preferred" : true,
    "comment" : "URI canônica para o identificador de carteirinha de beneficiário de plano de saúde."
  }]
}

```

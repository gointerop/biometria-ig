# Status de Cadastro Biométrico - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status de Cadastro Biométrico**

## CodeSystem: Status de Cadastro Biométrico 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/CodeSystem/status-biometrico-cs | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:StatusBiometricoCS |

 
Códigos de status para o cadastro de biometria facial do beneficiário. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StatusBiometricoVS](ValueSet-status-biometrico-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "status-biometrico-cs",
  "url" : "https://biometria.gointerop.com/fhir/CodeSystem/status-biometrico-cs",
  "version" : "0.1.0",
  "name" : "StatusBiometricoCS",
  "title" : "Status de Cadastro Biométrico",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Códigos de status para o cadastro de biometria facial do beneficiário.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "cadastrado",
    "display" : "Cadastrado",
    "definition" : "O beneficiário possui biometria facial cadastrada e ativa na operadora."
  },
  {
    "code" : "nao-cadastrado",
    "display" : "Não Cadastrado",
    "definition" : "O beneficiário não possui biometria facial cadastrada na operadora."
  },
  {
    "code" : "desativado",
    "display" : "Desativado",
    "definition" : "O cadastro de biometria facial do beneficiário foi desativado."
  }]
}

```

# Canal de Autenticação Biométrica - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Canal de Autenticação Biométrica**

## CodeSystem: Canal de Autenticação Biométrica 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/CodeSystem/canal-autenticacao | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:CanalAutenticacao |

 
Define o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CanalAutenticacaoVS](ValueSet-canal-autenticacao-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "canal-autenticacao",
  "url" : "https://biometria.gointerop.com/fhir/CodeSystem/canal-autenticacao",
  "version" : "0.1.0",
  "name" : "CanalAutenticacao",
  "title" : "Canal de Autenticação Biométrica",
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
  "description" : "Define o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada.",
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
    "code" : "sistema-operadora",
    "display" : "Sistema da Operadora",
    "definition" : "Autenticação realizada pelo operador via sistema da operadora (presencial)."
  },
  {
    "code" : "sistema-prestador",
    "display" : "Sistema do Prestador",
    "definition" : "Autenticação realizada no início do atendimento no sistema do prestador (presencial)."
  },
  {
    "code" : "app-beneficiario",
    "display" : "App do Beneficiário",
    "definition" : "Autenticação realizada pelo próprio beneficiário via aplicativo da operadora (teleatendimento)."
  }]
}

```

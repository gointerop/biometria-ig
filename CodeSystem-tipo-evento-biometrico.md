# Tipo de Evento Biométrico - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de Evento Biométrico**

## CodeSystem: Tipo de Evento Biométrico 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:TipoEventoBiometrico |

 
Classifica o tipo de evento relacionado à biometria facial de beneficiários de planos de saúde, conforme norma orientativa ANS v5. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultadoBiometrico](ValueSet-resultado-biometrico.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-evento-biometrico",
  "url" : "https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico",
  "version" : "0.1.0",
  "name" : "TipoEventoBiometrico",
  "title" : "Tipo de Evento Biométrico",
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
  "description" : "Classifica o tipo de evento relacionado à biometria facial de beneficiários de planos de saúde, conforme norma orientativa ANS v5.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "captura-inicial",
    "display" : "Captura Inicial",
    "definition" : "Captura inicial da biometria facial do beneficiário para cadastro no sistema da operadora ou prestador."
  },
  {
    "code" : "autenticacao-presenca",
    "display" : "Autenticação de Presença",
    "definition" : "Autenticação da presença do beneficiário via biometria facial no sistema da operadora para registro de atendimento."
  },
  {
    "code" : "autenticacao-atendimento",
    "display" : "Autenticação de Atendimento",
    "definition" : "Autenticação do beneficiário via biometria facial no início do atendimento pelo prestador."
  },
  {
    "code" : "autenticacao-teleatendimento",
    "display" : "Autenticação de Teleatendimento",
    "definition" : "Autenticação do beneficiário via biometria facial no aplicativo da operadora para teleatendimento."
  }]
}

```

# Resultado da Prova de Vida - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado da Prova de Vida**

## CodeSystem: Resultado da Prova de Vida 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/CodeSystem/liveness-resultado-cs | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:LivenessResultadoCS |

 
Códigos para resultado da verificação de prova de vida passiva (liveness detection). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LivenessResultadoVS](ValueSet-liveness-resultado-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "liveness-resultado-cs",
  "url" : "https://biometria.gointerop.com/fhir/CodeSystem/liveness-resultado-cs",
  "version" : "0.1.0",
  "name" : "LivenessResultadoCS",
  "title" : "Resultado da Prova de Vida",
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
  "description" : "Códigos para resultado da verificação de prova de vida passiva (liveness detection).",
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
    "code" : "aprovado",
    "display" : "Aprovado",
    "definition" : "A prova de vida foi executada com sucesso — o beneficiário é uma pessoa real presente no momento da captura."
  },
  {
    "code" : "reprovado",
    "display" : "Reprovado",
    "definition" : "A prova de vida falhou — possível uso de foto ou máscara."
  },
  {
    "code" : "nao-executado",
    "display" : "Não Executado",
    "definition" : "A prova de vida não foi executada nesta autenticação (opcional conforme norma)."
  }]
}

```

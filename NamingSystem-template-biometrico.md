# template-biometrico - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **template-biometrico**

## NamingSystem: template-biometrico 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/NamingSystem/template-biometrico | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:TemplateBiometrico |

 
Identificador único do template biométrico facial armazenado pela operadora para o beneficiário. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "template-biometrico",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://biometria.gointerop.com/fhir/NamingSystem/template-biometrico"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "TemplateBiometrico",
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
  "description" : "Identificador único do template biométrico facial armazenado pela operadora para o beneficiário.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://biometria.gointerop.com/fhir/sid/template-biometrico",
    "preferred" : true,
    "comment" : "URI canônica para o identificador de template biométrico facial de beneficiário."
  }]
}

```

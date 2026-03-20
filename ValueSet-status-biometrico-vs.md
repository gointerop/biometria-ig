# Status de Cadastro Biométrico - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status de Cadastro Biométrico**

## ValueSet: Status de Cadastro Biométrico 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/ValueSet/status-biometrico-vs | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:StatusBiometricoVS |

 
Valores possíveis para o status do cadastro biométrico facial do beneficiário. 

 **References** 

* [Status de Cadastro Biométrico](StructureDefinition-ext-status-biometrico.md)
* [Status de Cadastro Biométrico](StructureDefinition-ext-status-biometrico.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "status-biometrico-vs",
  "url" : "https://biometria.gointerop.com/fhir/ValueSet/status-biometrico-vs",
  "version" : "0.1.0",
  "name" : "StatusBiometricoVS",
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
  "description" : "Valores possíveis para o status do cadastro biométrico facial do beneficiário.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://biometria.gointerop.com/fhir/CodeSystem/status-biometrico-cs",
      "concept" : [{
        "code" : "cadastrado"
      },
      {
        "code" : "nao-cadastrado"
      },
      {
        "code" : "desativado"
      }]
    }]
  }
}

```

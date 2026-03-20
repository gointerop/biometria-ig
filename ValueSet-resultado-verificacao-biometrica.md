# Resultado da Verificação Biométrica Facial - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado da Verificação Biométrica Facial**

## ValueSet: Resultado da Verificação Biométrica Facial 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/ValueSet/resultado-verificacao-biometrica | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:ResultadoVerificacaoBiometrica |

 
Indica o resultado da comparação biométrica entre a foto capturada e o template armazenado. 

 **References** 

Este conjunto de valores não é utilizado aqui; pode ser utilizado noutro local (por exemplo, especificações e/ou implementações que utilizem este conteúdo)

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
  "id" : "resultado-verificacao-biometrica",
  "url" : "https://biometria.gointerop.com/fhir/ValueSet/resultado-verificacao-biometrica",
  "version" : "0.1.0",
  "name" : "ResultadoVerificacaoBiometrica",
  "title" : "Resultado da Verificação Biométrica Facial",
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
  "description" : "Indica o resultado da comparação biométrica entre a foto capturada e o template armazenado.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "version" : "4.0.0",
      "concept" : [{
        "code" : "POS",
        "display" : "Positivo (verificado)"
      },
      {
        "code" : "NEG",
        "display" : "Negativo (não verificado)"
      },
      {
        "code" : "IND",
        "display" : "Indeterminado (erro de sistema)"
      }]
    }]
  }
}

```

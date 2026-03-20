# exemplo-autenticacao-atendimento - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-autenticacao-atendimento**

## Example AuditEvent: exemplo-autenticacao-atendimento

Perfil: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md)

**Canal de Autenticação Biométrica**: sistema-prestador

> **Prova de Vida (Liveness Detection)**
* executado: false
* resultado: nao-executado

**type**: DICOM: 110114 (User Authentication)

**subtype**: [Tipo de Evento Biométrico: autenticacao-atendimento](CodeSystem-tipo-evento-biometrico.md#tipo-evento-biometrico-autenticacao-atendimento) (Autenticação de Atendimento)

**action**: Execute

**recorded**: 2026-03-20 09:15:00-0300

**outcome**: Success

**outcomeDesc**: Beneficiário autenticado. Atendimento iniciado pelo prestador.

> **agent****type**: PAT**who**: [Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))](Patient-exemplo-beneficiario.md)**requestor**: false

> **agent****type**: custodian**who**: [Organization Clínica Prestadora Exemplo LTDA](Organization-exemplo-prestador.md)**requestor**: true

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Organization Clínica Prestadora Exemplo LTDA](Organization-exemplo-prestador.md) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "exemplo-autenticacao-atendimento",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/AutenticacaoBiometricaFacial"]
  },
  "extension" : [{
    "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao",
    "valueCode" : "sistema-prestador"
  },
  {
    "extension" : [{
      "url" : "executado",
      "valueBoolean" : false
    },
    {
      "url" : "resultado",
      "valueCode" : "nao-executado"
    }],
    "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-liveness-detection"
  }],
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110114",
    "display" : "User Authentication"
  },
  "subtype" : [{
    "system" : "https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico",
    "code" : "autenticacao-atendimento",
    "display" : "Autenticação de Atendimento"
  }],
  "action" : "E",
  "recorded" : "2026-03-20T09:15:00-03:00",
  "outcome" : "0",
  "outcomeDesc" : "Beneficiário autenticado. Atendimento iniciado pelo prestador.",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PAT"
      }]
    },
    "who" : {
      "reference" : "Patient/exemplo-beneficiario"
    },
    "requestor" : false
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "CST"
      }]
    },
    "who" : {
      "reference" : "Organization/exemplo-prestador"
    },
    "requestor" : true
  }],
  "source" : {
    "observer" : {
      "reference" : "Organization/exemplo-prestador"
    }
  }
}

```

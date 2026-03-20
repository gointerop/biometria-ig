# exemplo-autenticacao-presenca - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-autenticacao-presenca**

## Example AuditEvent: exemplo-autenticacao-presenca

Perfil: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md)

**Canal de Autenticação Biométrica**: sistema-operadora

> **Prova de Vida (Liveness Detection)**
* executado: true
* resultado: aprovado

**type**: DICOM: 110114 (User Authentication)

**subtype**: [Tipo de Evento Biométrico: autenticacao-presenca](CodeSystem-tipo-evento-biometrico.md#tipo-evento-biometrico-autenticacao-presenca) (Autenticação de Presença)

**action**: Execute

**recorded**: 2026-03-20 14:30:00-0300

**outcome**: Success

**outcomeDesc**: Beneficiário identificado com sucesso. Presença registrada no atendimento.

> **agent****type**: PAT**who**: [Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))](Patient-exemplo-beneficiario.md)**requestor**: false

> **agent****type**: custodian**who**: [Organization Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md)**requestor**: true

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Organization Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "exemplo-autenticacao-presenca",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/AutenticacaoBiometricaFacial"]
  },
  "extension" : [{
    "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao",
    "valueCode" : "sistema-operadora"
  },
  {
    "extension" : [{
      "url" : "executado",
      "valueBoolean" : true
    },
    {
      "url" : "resultado",
      "valueCode" : "aprovado"
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
    "code" : "autenticacao-presenca",
    "display" : "Autenticação de Presença"
  }],
  "action" : "E",
  "recorded" : "2026-03-20T14:30:00-03:00",
  "outcome" : "0",
  "outcomeDesc" : "Beneficiário identificado com sucesso. Presença registrada no atendimento.",
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
      "reference" : "Organization/exemplo-operadora"
    },
    "requestor" : true
  }],
  "source" : {
    "observer" : {
      "reference" : "Organization/exemplo-operadora"
    }
  }
}

```

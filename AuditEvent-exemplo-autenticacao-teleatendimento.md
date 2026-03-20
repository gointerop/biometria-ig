# exemplo-autenticacao-teleatendimento - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-autenticacao-teleatendimento**

## Example AuditEvent: exemplo-autenticacao-teleatendimento

Perfil: [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md)

**Canal de Autenticação Biométrica**: app-beneficiario

> **Prova de Vida (Liveness Detection)**
* executado: true
* resultado: aprovado

**type**: DICOM: 110114 (User Authentication)

**subtype**: [Tipo de Evento Biométrico: autenticacao-teleatendimento](CodeSystem-tipo-evento-biometrico.md#tipo-evento-biometrico-autenticacao-teleatendimento) (Autenticação de Teleatendimento)

**action**: Execute

**recorded**: 2026-03-20 16:45:00-0300

**outcome**: Success

**outcomeDesc**: Fotografia validada com sucesso. Teleatendimento liberado para o beneficiário.

> **agent****type**: PAT**who**: [Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))](Patient-exemplo-beneficiario.md)**requestor**: true

> **agent****type**: custodian**who**: [Organization Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md)**requestor**: false

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Organization Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "exemplo-autenticacao-teleatendimento",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/AutenticacaoBiometricaFacial"]
  },
  "extension" : [{
    "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-canal-autenticacao",
    "valueCode" : "app-beneficiario"
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
    "code" : "autenticacao-teleatendimento",
    "display" : "Autenticação de Teleatendimento"
  }],
  "action" : "E",
  "recorded" : "2026-03-20T16:45:00-03:00",
  "outcome" : "0",
  "outcomeDesc" : "Fotografia validada com sucesso. Teleatendimento liberado para o beneficiário.",
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
    "requestor" : true
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
    "requestor" : false
  }],
  "source" : {
    "observer" : {
      "reference" : "Organization/exemplo-operadora"
    }
  }
}

```

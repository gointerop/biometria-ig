# exemplo-atendimento - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-atendimento**

## Example Encounter: exemplo-atendimento

Perfil: [Atendimento com Autenticação Biométrica](StructureDefinition-AtendimentoBiometria.md)

**status**: In Progress

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Consultation

**subject**: [Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))](Patient-exemplo-beneficiario.md)

**period**: 2026-03-20 09:15:00-0300 --> (em curso)

**serviceProvider**: [Organization Clínica Prestadora Exemplo LTDA](Organization-exemplo-prestador.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "exemplo-atendimento",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/AtendimentoBiometria"]
  },
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "11429006",
      "display" : "Consultation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/exemplo-beneficiario"
  },
  "period" : {
    "start" : "2026-03-20T09:15:00-03:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/exemplo-prestador"
  }
}

```

# PatientExample - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample**

## Example Patient: PatientExample

Perfil: [MyPatient](StructureDefinition-MyPatient.md)

James Pond (sem género declarado), DN Desconhecida

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/MyPatient"]
  },
  "name" : [{
    "family" : "Pond",
    "given" : ["James"]
  }]
}

```

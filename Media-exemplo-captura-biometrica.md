# exemplo-captura-biometrica - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-captura-biometrica**

## Example Media: exemplo-captura-biometrica

Perfil: [Captura Biométrica Facial](StructureDefinition-CapturaBiometricaFacial.md)

**status**: Completed

**type**: photo

**modality**: Facial biometrics

**subject**: [Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))](Patient-exemplo-beneficiario.md)

**created**: 2026-03-20 10:00:00-0300

**operator**: [Organization Operadora Saúde Exemplo S.A.](Organization-exemplo-operadora.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Title** | **Creation** |
| * | image/jpeg | Captura facial inicial - Maria da Silva | 2026-03-20 10:00:00-0300 |

**note**: 

> 

Biometria capturada com sucesso. Qualidade da imagem validada. Template criptografado e armazenado no banco de dados da operadora.




## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "exemplo-captura-biometrica",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/CapturaBiometricaFacial"]
  },
  "status" : "completed",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/media-type",
      "code" : "photo"
    }]
  },
  "modality" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "397181003",
      "display" : "Facial biometrics"
    }]
  },
  "subject" : {
    "reference" : "Patient/exemplo-beneficiario"
  },
  "createdDateTime" : "2026-03-20T10:00:00-03:00",
  "operator" : {
    "reference" : "Organization/exemplo-operadora"
  },
  "content" : {
    "contentType" : "image/jpeg",
    "title" : "Captura facial inicial - Maria da Silva",
    "creation" : "2026-03-20T10:00:00-03:00"
  },
  "note" : [{
    "text" : "Biometria capturada com sucesso. Qualidade da imagem validada. Template criptografado e armazenado no banco de dados da operadora."
  }]
}

```

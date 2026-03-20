# exemplo-operadora - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-operadora**

## Example Organization: exemplo-operadora

Perfil: [Operadora de Saúde](StructureDefinition-OperadoraSaude.md)

**identifier**: `https://saude.gov.br/fhir/sid/ans-registro-operadora`/123456, `https://receita.gov.br/fhir/sid/cnpj`/12.345.678/0001-99

**active**: true

**type**: Insurance Company

**name**: Operadora Saúde Exemplo S.A.



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "exemplo-operadora",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/OperadoraSaude"]
  },
  "identifier" : [{
    "system" : "https://saude.gov.br/fhir/sid/ans-registro-operadora",
    "value" : "123456"
  },
  {
    "system" : "https://receita.gov.br/fhir/sid/cnpj",
    "value" : "12.345.678/0001-99"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "ins",
      "display" : "Insurance Company"
    }]
  }],
  "name" : "Operadora Saúde Exemplo S.A."
}

```

# exemplo-prestador - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-prestador**

## Example Organization: exemplo-prestador

Perfil: [Prestador de Saúde](StructureDefinition-PrestadorSaude.md)

**identifier**: `https://saude.gov.br/fhir/sid/cnes`/9876543, `https://receita.gov.br/fhir/sid/cnpj`/98.765.432/0001-11

**active**: true

**name**: Clínica Prestadora Exemplo LTDA

**address**: Avenida da Saúde, 500 São Paulo SP 01310-100 BR 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "exemplo-prestador",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/PrestadorSaude"]
  },
  "identifier" : [{
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "9876543"
  },
  {
    "system" : "https://receita.gov.br/fhir/sid/cnpj",
    "value" : "98.765.432/0001-11"
  }],
  "active" : true,
  "name" : "Clínica Prestadora Exemplo LTDA",
  "address" : [{
    "line" : ["Avenida da Saúde, 500"],
    "city" : "São Paulo",
    "state" : "SP",
    "postalCode" : "01310-100",
    "country" : "BR"
  }]
}

```

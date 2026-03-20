# exemplo-beneficiario - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **exemplo-beneficiario**

## Example Patient: exemplo-beneficiario

Perfil: [Beneficiário com Biometria Facial](StructureDefinition-BeneficiarioBiometria.md)

Maria da Silva(official) Female, DoB: 1990-04-15 ( https://saude.gov.br/fhir/sid/cns#898001160152321 (use: official, ))

-------

| | |
| :--- | :--- |
| Ativo: | true |
| Other Ids: | * [CarteirinhaBeneficiario](NamingSystem-carteirinha-beneficiario.md)/0001234567890 (utilização: official, )
* `https://saude.gov.br/fhir/sid/cpf`/12345678901 (utilização: official, )
 |
| Detalhes do contacto | * [+5511987654321](tel:+5511987654321)
* Rua das Palmeiras, 200 São Paulo SP 04567-000 BR (home)
 |
| [Status de Cadastro Biométrico](StructureDefinition-ext-status-biometrico.md) | cadastrado |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "exemplo-beneficiario",
  "meta" : {
    "profile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria"]
  },
  "extension" : [{
    "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/ext-status-biometrico",
    "valueCode" : "cadastrado"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "https://biometria.gointerop.com/fhir/sid/carteirinha-beneficiario",
    "value" : "0001234567890"
  },
  {
    "use" : "official",
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "12345678901"
  },
  {
    "use" : "official",
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "898001160152321"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Maria da Silva",
    "family" : "Silva",
    "given" : ["Maria"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+5511987654321",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1990-04-15",
  "address" : [{
    "use" : "home",
    "line" : ["Rua das Palmeiras, 200"],
    "city" : "São Paulo",
    "state" : "SP",
    "postalCode" : "04567-000",
    "country" : "BR"
  }]
}

```

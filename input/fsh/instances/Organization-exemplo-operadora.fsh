Instance: exemplo-operadora
InstanceOf: OperadoraSaude
Usage: #example
* identifier[ansRegistro].system = "https://saude.gov.br/fhir/sid/ans-registro-operadora"
* identifier[ansRegistro].value = "123456"
* identifier[cnpj].system = "https://receita.gov.br/fhir/sid/cnpj"
* identifier[cnpj].value = "12.345.678/0001-99"
* name = "Operadora Saúde Exemplo S.A."
* active = true
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #ins
* type.coding.display = "Insurance Company"

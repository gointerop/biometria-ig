Instance: exemplo-beneficiario
InstanceOf: BeneficiarioBiometria
Usage: #example
* extension[statusBiometrico].valueCode = StatusBiometricoCS#cadastrado
* identifier[carteirinha].use = #official
* identifier[carteirinha].system = "https://biometria.gointerop.com/fhir/sid/carteirinha-beneficiario"
* identifier[carteirinha].value = "0001234567890"
* identifier[cpf].use = #official
* identifier[cpf].system = "https://saude.gov.br/fhir/sid/cpf"
* identifier[cpf].value = "12345678901"
* identifier[cns].use = #official
* identifier[cns].system = "https://saude.gov.br/fhir/sid/cns"
* identifier[cns].value = "898001160152321"
* active = true
* name.use = #official
* name.text = "Maria da Silva"
* name.family = "Silva"
* name.given = "Maria"
* gender = #female
* birthDate = "1990-04-15"
* telecom.system = #phone
* telecom.value = "+5511987654321"
* telecom.use = #mobile
* address.use = #home
* address.line = "Rua das Palmeiras, 200"
* address.city = "São Paulo"
* address.state = "SP"
* address.postalCode = "04567-000"
* address.country = "BR"

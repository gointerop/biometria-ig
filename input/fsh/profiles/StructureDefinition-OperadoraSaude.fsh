Profile: OperadoraSaude
Id: OperadoraSaude
Parent: Organization
Title: "Operadora de Saúde"
Description: "Operadora de plano de saúde responsável pelo armazenamento e validação da biometria facial dos beneficiários."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..*

* identifier contains
    ansRegistro 0..1 MS and
    cnpj 0..1 MS

* identifier[ansRegistro].system = "https://saude.gov.br/fhir/sid/ans-registro-operadora"
* identifier[ansRegistro] ^short = "Número de registro na ANS"

* identifier[cnpj].system = "https://receita.gov.br/fhir/sid/cnpj"
* identifier[cnpj] ^short = "CNPJ da operadora"

* name 1..1 MS
* name ^short = "Nome da operadora de saúde"
* active MS
* type MS

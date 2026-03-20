Profile: PrestadorSaude
Id: PrestadorSaude
Parent: Organization
Title: "Prestador de Saúde"
Description: "Prestador de serviços de saúde (clínica, hospital, consultório) que utiliza biometria facial para autenticação do beneficiário no início do atendimento."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..*

* identifier contains
    cnes 0..1 MS and
    cnpj 0..1 MS

* identifier[cnes].system = "https://saude.gov.br/fhir/sid/cnes"
* identifier[cnes] ^short = "Código Nacional de Estabelecimentos de Saúde (CNES)"

* identifier[cnpj].system = "https://receita.gov.br/fhir/sid/cnpj"
* identifier[cnpj] ^short = "CNPJ do prestador"

* name 1..1 MS
* name ^short = "Nome do prestador de saúde"
* active MS
* address MS

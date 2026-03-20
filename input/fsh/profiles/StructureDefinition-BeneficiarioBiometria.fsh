Profile: BeneficiarioBiometria
Id: BeneficiarioBiometria
Parent: Patient
Title: "Beneficiário com Biometria Facial"
Description: "Perfil de beneficiário de plano de saúde com suporte a identificação por biometria facial, conforme norma orientativa ANS v5."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

// Extension: status do cadastro biométrico
* extension contains ext-status-biometrico named statusBiometrico 0..1 MS
* extension[statusBiometrico] ^short = "Status do cadastro biométrico facial"
* extension[statusBiometrico] ^definition = "Indica se o beneficiário possui biometria facial cadastrada na operadora."

// Identificadores obrigatórios
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificadores do beneficiário"
* identifier 1..*

* identifier contains
    carteirinha 0..1 MS and
    cpf 0..1 MS and
    cns 0..1 MS

* identifier[carteirinha].system = "https://biometria.gointerop.com/fhir/sid/carteirinha-beneficiario"
* identifier[carteirinha] ^short = "Número da carteirinha do plano de saúde"

* identifier[cpf].system = "https://saude.gov.br/fhir/sid/cpf"
* identifier[cpf] ^short = "CPF do beneficiário"

* identifier[cns].system = "https://saude.gov.br/fhir/sid/cns"
* identifier[cns] ^short = "Cartão Nacional de Saúde (CNS)"

// Dados pessoais
* name 1..* MS
* name ^short = "Nome do beneficiário"
* birthDate MS
* birthDate ^short = "Data de nascimento"
* gender MS

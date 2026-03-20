Profile: ConsentimentoBiometria
Id: ConsentimentoBiometria
Parent: Consent
Title: "Consentimento para Biometria Facial"
Description: "Consentimento do beneficiário para coleta, armazenamento e uso da biometria facial pela operadora de saúde, conforme exigência da LGPD (Lei 13.709/2018)."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

* status 1..1 MS
* status ^short = "draft | proposed | active | rejected | inactive | entered-in-error"

// Escopo: privacy
* scope MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#privacy

// Categoria: coleta de dado biométrico
* category 1..* MS
* category ^short = "Categoria do consentimento: coleta de dado biométrico sensível (LGPD)"

// Paciente
* patient 1..1 MS
* patient only Reference(BeneficiarioBiometria)
* patient ^short = "Beneficiário que concedeu o consentimento"

// Data/hora
* dateTime 1..1 MS
* dateTime ^short = "Data e hora em que o consentimento foi concedido"

// Organização que recebe o consentimento
* organization 1..* MS
* organization only Reference(OperadoraSaude)
* organization ^short = "Operadora que recebe o consentimento para uso da biometria"

// Política
* policyRule MS
* policyRule ^short = "Regra de política aplicada (ex: LGPD Art. 11)"

// Provisões
* provision MS
* provision ^short = "Detalhes das permissões ou restrições do consentimento"
* provision.type MS
* provision.type ^short = "deny | permit"
* provision.period MS
* provision.period ^short = "Período de validade do consentimento"

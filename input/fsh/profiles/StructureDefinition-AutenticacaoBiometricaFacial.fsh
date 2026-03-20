Profile: AutenticacaoBiometricaFacial
Id: AutenticacaoBiometricaFacial
Parent: AuditEvent
Title: "Autenticação Biométrica Facial"
Description: "Registro de evento de autenticação biométrica facial do beneficiário. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5: autenticação de presença, autenticação de atendimento e autenticação via app."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

// Extensions
* extension contains
    ext-canal-autenticacao named canalAutenticacao 1..1 MS and
    ext-liveness-detection named livenessDetection 0..1 MS
* extension[canalAutenticacao] ^short = "Canal utilizado na autenticação biométrica"
* extension[livenessDetection] ^short = "Resultado da prova de vida passiva (liveness)"

// Tipo de evento: autenticação biométrica
* type MS
* type ^short = "Tipo de evento de segurança: autenticação"
* type = http://dicom.nema.org/resources/ontology/DCM#110114 "User Authentication"

// Subtipo: biometria facial
* subtype MS
* subtype ^short = "Subtipo: evento de autenticação biométrica facial"

// Resultado
* outcome 1..1 MS
* outcome ^short = "0 = sucesso | 4 = erro menor | 8 = erro grave | 12 = erro fatal"

* outcomeDesc MS
* outcomeDesc ^short = "Descrição do resultado da autenticação biométrica"

// Quando ocorreu
* recorded 1..1 MS
* recorded ^short = "Data e hora do evento de autenticação"

// Quem é o beneficiário
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type.coding.code"
* agent ^slicing.rules = #open
* agent 2..*

* agent contains
    beneficiario 1..1 MS and
    sistema 1..1 MS

* agent[beneficiario].who only Reference(BeneficiarioBiometria)
* agent[beneficiario].who MS
* agent[beneficiario] ^short = "Beneficiário autenticado"
* agent[beneficiario].requestor MS
* agent[beneficiario].requestor ^short = "true se o beneficiário iniciou a autenticação (ex: app); false se foi o sistema (ex: balcão)"

* agent[sistema].who only Reference(OperadoraSaude or PrestadorSaude)
* agent[sistema].who MS
* agent[sistema] ^short = "Sistema (operadora ou prestador) que realizou a autenticação"
* agent[sistema].requestor MS

// Entidade: template biométrico
* entity 0..* MS
* entity ^short = "Referências ao template biométrico e captura utilizados"

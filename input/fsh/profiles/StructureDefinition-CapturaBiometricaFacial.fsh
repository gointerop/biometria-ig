Profile: CapturaBiometricaFacial
Id: CapturaBiometricaFacial
Parent: Media
Title: "Captura Biométrica Facial"
Description: "Registro da captura inicial da biometria facial do beneficiário. Corresponde ao Caso de Uso 1: Captura Inicial da Biometria Facial (ANS v5)."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

// Tipo fixo: foto
* type = http://terminology.hl7.org/CodeSystem/media-type#photo
* type MS

// Modalidade: biometria facial
* modality MS
* modality ^short = "Modalidade de captura: biometria facial"

// Quem é o sujeito
* subject 1..1 MS
* subject only Reference(BeneficiarioBiometria)
* subject ^short = "Beneficiário cuja biometria foi capturada"

// Quem realizou a captura
* operator 0..1 MS
* operator only Reference(OperadoraSaude or PrestadorSaude)
* operator ^short = "Operadora ou prestador que realizou a captura"

// Quando foi capturada
* createdDateTime 1..1 MS
* createdDateTime ^short = "Data e hora da captura biométrica"

// Dados da imagem
* content MS
* content ^short = "Dados da imagem facial capturada (base64 ou referência)"
* content.contentType 1..1 MS
* content.contentType ^short = "Tipo MIME da imagem (ex: image/jpeg)"

// Status
* status MS
* status ^short = "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"

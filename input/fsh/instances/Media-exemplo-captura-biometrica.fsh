// Caso de Uso 1: Captura Inicial da Biometria Facial
Instance: exemplo-captura-biometrica
InstanceOf: CapturaBiometricaFacial
Usage: #example
* status = #completed
* type = http://terminology.hl7.org/CodeSystem/media-type#photo
* modality.coding.system = "http://snomed.info/sct"
* modality.coding.code = #397181003
* modality.coding.display = "Facial biometrics"
* subject = Reference(exemplo-beneficiario)
* operator = Reference(exemplo-operadora)
* createdDateTime = "2026-03-20T10:00:00-03:00"
* content.contentType = #image/jpeg
* content.title = "Captura facial inicial - Maria da Silva"
* content.creation = "2026-03-20T10:00:00-03:00"
// Simulação: content.data seria o base64 da imagem facial criptografada
* note.text = "Biometria capturada com sucesso. Qualidade da imagem validada. Template criptografado e armazenado no banco de dados da operadora."

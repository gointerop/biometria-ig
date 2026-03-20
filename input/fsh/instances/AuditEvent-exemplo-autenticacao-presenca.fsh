// Caso de Uso 2: Autenticação de Presença via Sistema da Operadora
Instance: exemplo-autenticacao-presenca
InstanceOf: AutenticacaoBiometricaFacial
Usage: #example
* extension[canalAutenticacao].valueCode = CanalAutenticacao#sistema-operadora
* extension[livenessDetection].extension[executado].valueBoolean = true
* extension[livenessDetection].extension[resultado].valueCode = LivenessResultadoCS#aprovado
* type.system = "http://dicom.nema.org/resources/ontology/DCM"
* type.code = #110114
* type.display = "User Authentication"
* subtype[0].system = "https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico"
* subtype[0].code = #autenticacao-presenca
* subtype[0].display = "Autenticação de Presença"
* action = #E
* recorded = "2026-03-20T14:30:00-03:00"
* outcome = #0
* outcomeDesc = "Beneficiário identificado com sucesso. Presença registrada no atendimento."
* agent[beneficiario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[beneficiario].type.coding.code = #PAT
* agent[beneficiario].who = Reference(exemplo-beneficiario)
* agent[beneficiario].requestor = false
* agent[sistema].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[sistema].type.coding.code = #CST
* agent[sistema].who = Reference(exemplo-operadora)
* agent[sistema].requestor = true
* source.observer = Reference(exemplo-operadora)

// Caso de Uso 4: Autenticação via App da Operadora (Teleatendimento)
Instance: exemplo-autenticacao-teleatendimento
InstanceOf: AutenticacaoBiometricaFacial
Usage: #example
* extension[canalAutenticacao].valueCode = CanalAutenticacao#app-beneficiario
* extension[livenessDetection].extension[executado].valueBoolean = true
* extension[livenessDetection].extension[resultado].valueCode = LivenessResultadoCS#aprovado
* type.system = "http://dicom.nema.org/resources/ontology/DCM"
* type.code = #110114
* type.display = "User Authentication"
* subtype[0].system = "https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico"
* subtype[0].code = #autenticacao-teleatendimento
* subtype[0].display = "Autenticação de Teleatendimento"
* action = #E
* recorded = "2026-03-20T16:45:00-03:00"
* outcome = #0
* outcomeDesc = "Fotografia validada com sucesso. Teleatendimento liberado para o beneficiário."
* agent[beneficiario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[beneficiario].type.coding.code = #PAT
* agent[beneficiario].who = Reference(exemplo-beneficiario)
* agent[beneficiario].requestor = true
* agent[sistema].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[sistema].type.coding.code = #CST
* agent[sistema].who = Reference(exemplo-operadora)
* agent[sistema].requestor = false
* source.observer = Reference(exemplo-operadora)

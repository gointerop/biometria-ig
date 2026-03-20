// Caso de Uso 3: Autenticação de Beneficiário no Início do Atendimento (Prestador)
Instance: exemplo-autenticacao-atendimento
InstanceOf: AutenticacaoBiometricaFacial
Usage: #example
* extension[canalAutenticacao].valueCode = CanalAutenticacao#sistema-prestador
* extension[livenessDetection].extension[executado].valueBoolean = false
* extension[livenessDetection].extension[resultado].valueCode = LivenessResultadoCS#nao-executado
* type.system = "http://dicom.nema.org/resources/ontology/DCM"
* type.code = #110114
* type.display = "User Authentication"
* subtype[0].system = "https://biometria.gointerop.com/fhir/CodeSystem/tipo-evento-biometrico"
* subtype[0].code = #autenticacao-atendimento
* subtype[0].display = "Autenticação de Atendimento"
* action = #E
* recorded = "2026-03-20T09:15:00-03:00"
* outcome = #0
* outcomeDesc = "Beneficiário autenticado. Atendimento iniciado pelo prestador."
* agent[beneficiario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[beneficiario].type.coding.code = #PAT
* agent[beneficiario].who = Reference(exemplo-beneficiario)
* agent[beneficiario].requestor = false
* agent[sistema].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* agent[sistema].type.coding.code = #CST
* agent[sistema].who = Reference(exemplo-prestador)
* agent[sistema].requestor = true
* source.observer = Reference(exemplo-prestador)

Instance: exemplo-atendimento
InstanceOf: AtendimentoBiometria
Usage: #example
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* type[0].coding.system = "http://snomed.info/sct"
* type[0].coding.code = #11429006
* type[0].coding.display = "Consultation"
* subject = Reference(exemplo-beneficiario)
* period.start = "2026-03-20T09:15:00-03:00"
* serviceProvider = Reference(exemplo-prestador)

Instance: exemplo-consentimento-biometria
InstanceOf: ConsentimentoBiometria
Usage: #example
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#privacy
* category[0].coding.system = "http://loinc.org"
* category[0].coding.code = #59284-0
* category[0].coding.display = "Consent Document"
* patient = Reference(exemplo-beneficiario)
* dateTime = "2026-03-20T09:00:00-03:00"
* organization = Reference(exemplo-operadora)
* policyRule.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* policyRule.coding.code = #OPTOUT
* policyRule.text = "Consentimento concedido conforme LGPD Art. 11 - Dados Biométricos Sensíveis"
* provision.type = #permit
* provision.period.start = "2026-03-20"
* provision.period.end = "2027-03-20"
* provision.action[0].coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.action[0].coding.code = #collect
* provision.action[0].coding.display = "Collect"
* provision.action[1].coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.action[1].coding.code = #use
* provision.action[1].coding.display = "Access and Use"

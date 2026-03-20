ValueSet: CanalAutenticacaoBiometrica
Id: canal-autenticacao-biometrica
Title: "Canal de Autenticação Biométrica"
Description: "Canal utilizado para autenticação biométrica do beneficiário."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Sistema da Operadora (presencial)"
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#PHARM "Sistema do Prestador (presencial)"
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#OUTPHARM "Aplicativo da Operadora (teleatendimento)"

CodeSystem: CanalAutenticacao
Id: canal-autenticacao
Title: "Canal de Autenticação Biométrica"
Description: "Define o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* #sistema-operadora "Sistema da Operadora" "Autenticação realizada pelo operador via sistema da operadora (presencial)."
* #sistema-prestador "Sistema do Prestador" "Autenticação realizada no início do atendimento no sistema do prestador (presencial)."
* #app-beneficiario "App do Beneficiário" "Autenticação realizada pelo próprio beneficiário via aplicativo da operadora (teleatendimento)."

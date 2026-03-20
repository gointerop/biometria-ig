Extension: CanalAutenticacaoExt
Id: ext-canal-autenticacao
Title: "Canal de Autenticação Biométrica"
Description: "Indica o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada: sistema da operadora, sistema do prestador ou aplicativo do beneficiário."
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "AuditEvent"
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* value[x] only code
* valueCode from CanalAutenticacaoVS (required)

ValueSet: CanalAutenticacaoVS
Id: canal-autenticacao-vs
Title: "Canal de Autenticação Biométrica"
Description: "Canal utilizado na autenticação biométrica facial do beneficiário."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* CanalAutenticacao#sistema-operadora
* CanalAutenticacao#sistema-prestador
* CanalAutenticacao#app-beneficiario

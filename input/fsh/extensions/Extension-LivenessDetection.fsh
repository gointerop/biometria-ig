CodeSystem: LivenessResultadoCS
Id: liveness-resultado-cs
Title: "Resultado da Prova de Vida"
Description: "Códigos para resultado da verificação de prova de vida passiva (liveness detection)."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* #aprovado "Aprovado" "A prova de vida foi executada com sucesso — o beneficiário é uma pessoa real presente no momento da captura."
* #reprovado "Reprovado" "A prova de vida falhou — possível uso de foto ou máscara."
* #nao-executado "Não Executado" "A prova de vida não foi executada nesta autenticação (opcional conforme norma)."

ValueSet: LivenessResultadoVS
Id: liveness-resultado-vs
Title: "Resultado da Prova de Vida"
Description: "Resultado da verificação de prova de vida (liveness detection) passiva."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* LivenessResultadoCS#aprovado
* LivenessResultadoCS#reprovado
* LivenessResultadoCS#nao-executado

Extension: LivenessDetection
Id: ext-liveness-detection
Title: "Prova de Vida (Liveness Detection)"
Description: "Indica se a prova de vida passiva (liveness detection) foi executada durante a autenticação biométrica e qual o resultado."
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "AuditEvent"
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* extension contains
    executado 1..1 and
    resultado 0..1
* extension[executado].value[x] only boolean
* extension[executado] ^short = "Se a prova de vida foi executada"
* extension[executado] ^definition = "Indica se a prova de vida passiva (liveness) foi executada durante o processo de autenticação."
* extension[resultado].value[x] only code
* extension[resultado].valueCode from LivenessResultadoVS (required)
* extension[resultado] ^short = "Resultado da prova de vida"
* extension[resultado] ^definition = "Resultado da prova de vida passiva executada durante a autenticação biométrica."

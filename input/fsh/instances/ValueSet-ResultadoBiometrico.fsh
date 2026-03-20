ValueSet: ResultadoBiometrico
Id: resultado-biometrico
Title: "Resultado da Verificação Biométrica"
Description: "Resultado da verificação biométrica facial de um beneficiário."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* include TipoEventoBiometrico#captura-inicial
* include TipoEventoBiometrico#autenticacao-presenca
* include TipoEventoBiometrico#autenticacao-atendimento
* include TipoEventoBiometrico#autenticacao-teleatendimento

ValueSet: ResultadoVerificacaoBiometrica
Id: resultado-verificacao-biometrica
Title: "Resultado da Verificação Biométrica Facial"
Description: "Indica o resultado da comparação biométrica entre a foto capturada e o template armazenado."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positivo (verificado)"
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#NEG "Negativo (não verificado)"
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#IND "Indeterminado (erro de sistema)"

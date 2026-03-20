CodeSystem: StatusBiometricoCS
Id: status-biometrico-cs
Title: "Status de Cadastro Biométrico"
Description: "Códigos de status para o cadastro de biometria facial do beneficiário."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* #cadastrado "Cadastrado" "O beneficiário possui biometria facial cadastrada e ativa na operadora."
* #nao-cadastrado "Não Cadastrado" "O beneficiário não possui biometria facial cadastrada na operadora."
* #desativado "Desativado" "O cadastro de biometria facial do beneficiário foi desativado."

ValueSet: StatusBiometricoVS
Id: status-biometrico-vs
Title: "Status de Cadastro Biométrico"
Description: "Valores possíveis para o status do cadastro biométrico facial do beneficiário."
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* StatusBiometricoCS#cadastrado
* StatusBiometricoCS#nao-cadastrado
* StatusBiometricoCS#desativado

Extension: StatusBiometrico
Id: ext-status-biometrico
Title: "Status de Cadastro Biométrico"
Description: "Indica o status do cadastro de biometria facial do beneficiário na operadora de saúde."
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"
* value[x] only code
* valueCode from StatusBiometricoVS (required)

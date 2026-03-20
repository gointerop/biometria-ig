Profile: AtendimentoBiometria
Id: AtendimentoBiometria
Parent: Encounter
Title: "Atendimento com Autenticação Biométrica"
Description: "Atendimento de saúde onde o beneficiário foi autenticado via biometria facial no início. Vincula a autenticação biométrica ao atendimento real. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brazil"

* status 1..1 MS
* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled"

* class MS
* class ^short = "Classe do atendimento: ambulatorial, hospitalar, urgência, teleatendimento, etc."

// Beneficiário
* subject 1..1 MS
* subject only Reference(BeneficiarioBiometria)
* subject ^short = "Beneficiário atendido e autenticado por biometria"

// Período do atendimento
* period MS
* period ^short = "Período do atendimento"
* period.start MS
* period.start ^short = "Início do atendimento (após autenticação biométrica bem-sucedida)"

// Prestador
* serviceProvider 0..1 MS
* serviceProvider only Reference(PrestadorSaude)
* serviceProvider ^short = "Prestador onde ocorreu o atendimento"

// Participantes (profissional de saúde)
* participant MS
* participant ^short = "Profissional de saúde que realizou o atendimento"

// Tipo de atendimento
* type MS
* type ^short = "Tipo/especialidade do atendimento"

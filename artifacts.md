# Artifacts Summary - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Atendimento com Autenticação Biométrica](StructureDefinition-AtendimentoBiometria.md) | Atendimento de saúde onde o beneficiário foi autenticado via biometria facial no início. Vincula a autenticação biométrica ao atendimento real. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5. |
| [Autenticação Biométrica Facial](StructureDefinition-AutenticacaoBiometricaFacial.md) | Registro de evento de autenticação biométrica facial do beneficiário. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5: autenticação de presença, autenticação de atendimento e autenticação via app. |
| [Beneficiário com Biometria Facial](StructureDefinition-BeneficiarioBiometria.md) | Perfil de beneficiário de plano de saúde com suporte a identificação por biometria facial, conforme norma orientativa ANS v5. |
| [Captura Biométrica Facial](StructureDefinition-CapturaBiometricaFacial.md) | Registro da captura inicial da biometria facial do beneficiário. Corresponde ao Caso de Uso 1: Captura Inicial da Biometria Facial (ANS v5). |
| [Consentimento para Biometria Facial](StructureDefinition-ConsentimentoBiometria.md) | Consentimento do beneficiário para coleta, armazenamento e uso da biometria facial pela operadora de saúde, conforme exigência da LGPD (Lei 13.709/2018). |
| [MyPatient](StructureDefinition-MyPatient.md) | An example profile of the Patient resource. |
| [Operadora de Saúde](StructureDefinition-OperadoraSaude.md) | Operadora de plano de saúde responsável pelo armazenamento e validação da biometria facial dos beneficiários. |
| [Prestador de Saúde](StructureDefinition-PrestadorSaude.md) | Prestador de serviços de saúde (clínica, hospital, consultório) que utiliza biometria facial para autenticação do beneficiário no início do atendimento. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Canal de Autenticação Biométrica](StructureDefinition-ext-canal-autenticacao.md) | Indica o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada: sistema da operadora, sistema do prestador ou aplicativo do beneficiário. |
| [Prova de Vida (Liveness Detection)](StructureDefinition-ext-liveness-detection.md) | Indica se a prova de vida passiva (liveness detection) foi executada durante a autenticação biométrica e qual o resultado. |
| [Status de Cadastro Biométrico](StructureDefinition-ext-status-biometrico.md) | Indica o status do cadastro de biometria facial do beneficiário na operadora de saúde. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Canal de Autenticação Biométrica](ValueSet-canal-autenticacao-biometrica.md) | Canal utilizado para autenticação biométrica do beneficiário. |
| [Canal de Autenticação Biométrica](ValueSet-canal-autenticacao-vs.md) | Canal utilizado na autenticação biométrica facial do beneficiário. |
| [Resultado da Prova de Vida](ValueSet-liveness-resultado-vs.md) | Resultado da verificação de prova de vida (liveness detection) passiva. |
| [Resultado da Verificação Biométrica](ValueSet-resultado-biometrico.md) | Resultado da verificação biométrica facial de um beneficiário. |
| [Resultado da Verificação Biométrica Facial](ValueSet-resultado-verificacao-biometrica.md) | Indica o resultado da comparação biométrica entre a foto capturada e o template armazenado. |
| [Status de Cadastro Biométrico](ValueSet-status-biometrico-vs.md) | Valores possíveis para o status do cadastro biométrico facial do beneficiário. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Canal de Autenticação Biométrica](CodeSystem-canal-autenticacao.md) | Define o canal pelo qual a autenticação biométrica facial do beneficiário foi realizada. |
| [Resultado da Prova de Vida](CodeSystem-liveness-resultado-cs.md) | Códigos para resultado da verificação de prova de vida passiva (liveness detection). |
| [Status de Cadastro Biométrico](CodeSystem-status-biometrico-cs.md) | Códigos de status para o cadastro de biometria facial do beneficiário. |
| [Tipo de Evento Biométrico](CodeSystem-tipo-evento-biometrico.md) | Classifica o tipo de evento relacionado à biometria facial de beneficiários de planos de saúde, conforme norma orientativa ANS v5. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [carteirinha-beneficiario](NamingSystem-carteirinha-beneficiario.md) | Identificador da carteirinha (cartão de identificação) do beneficiário emitida pela operadora de plano de saúde. |
| [template-biometrico](NamingSystem-template-biometrico.md) | Identificador único do template biométrico facial armazenado pela operadora para o beneficiário. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [PatientExample](Patient-PatientExample.md) | An example of a patient with a license to krill. |
| [exemplo-atendimento](Encounter-exemplo-atendimento.md) |  |
| [exemplo-autenticacao-atendimento](AuditEvent-exemplo-autenticacao-atendimento.md) |  |
| [exemplo-autenticacao-presenca](AuditEvent-exemplo-autenticacao-presenca.md) |  |
| [exemplo-autenticacao-teleatendimento](AuditEvent-exemplo-autenticacao-teleatendimento.md) |  |
| [exemplo-beneficiario](Patient-exemplo-beneficiario.md) |  |
| [exemplo-captura-biometrica](Media-exemplo-captura-biometrica.md) |  |
| [exemplo-consentimento-biometria](Consent-exemplo-consentimento-biometria.md) |  |
| [exemplo-operadora](Organization-exemplo-operadora.md) |  |
| [exemplo-prestador](Organization-exemplo-prestador.md) |  |


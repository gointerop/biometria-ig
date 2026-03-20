# Conformidade - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* **Conformidade**

## Conformidade

# Conformidade

## Requisitos de Conformidade

Implementações conformes a este guia devem:

### Perfis Obrigatórios (SHALL)

| | | |
| :--- | :--- | :--- |
| [`BeneficiarioBiometria`](StructureDefinition-BeneficiarioBiometria.md) | `Patient` | SHALL |
| [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.md) | `AuditEvent` | SHALL |
| [`OperadoraSaude`](StructureDefinition-OperadoraSaude.md) | `Organization` | SHALL |

### Perfis Recomendados (SHOULD)

| | | |
| :--- | :--- | :--- |
| [`CapturaBiometricaFacial`](StructureDefinition-CapturaBiometricaFacial.md) | `Media` | SHOULD |
| [`ConsentimentoBiometria`](StructureDefinition-ConsentimentoBiometria.md) | `Consent` | SHOULD |
| [`AtendimentoBiometria`](StructureDefinition-AtendimentoBiometria.md) | `Encounter` | SHOULD |
| [`PrestadorSaude`](StructureDefinition-PrestadorSaude.md) | `Organization` | SHOULD |

## Operações FHIR Suportadas

| | | |
| :--- | :--- | :--- |
| `create`(POST) | `Media` | Registrar captura biométrica inicial (CU 1) |
| `create`(POST) | `AuditEvent` | Registrar evento de autenticação biométrica (CU 2, 3, 4) |
| `create`(POST) | `Consent` | Registrar consentimento LGPD do beneficiário |
| `read`(GET) | `Patient` | Consultar status biométrico do beneficiário |
| `create`(POST) | `Encounter` | Registrar atendimento iniciado após autenticação |

## Extensions Obrigatórias

Ao registrar um `AuditEvent` de autenticação biométrica:

* **`ext-canal-autenticacao`** (obrigatório): identifica se a autenticação ocorreu via `sistema-operadora`, `sistema-prestador` ou `app-beneficiario`.
* **`ext-liveness-detection`** (opcional): indica se prova de vida passiva foi executada e o resultado.

## Fluxo Alternativo — Carteirinha

Quando o sistema de biometria está inoperante, a norma ANS v5 prevê o fluxo alternativo de apresentação da carteirinha de identificação. Neste caso:

* Nenhum `AuditEvent` de autenticação biométrica deve ser registrado.
* O `Encounter` pode ser registrado com nota indicando o uso do fluxo alternativo.
* O `outcome` do `AuditEvent` deve ser `#12` (falha fatal) se o sistema falhou antes de ser possível a autenticação.


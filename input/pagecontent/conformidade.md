# Conformidade

## Requisitos de Conformidade

Implementações conformes a este guia devem:

### Perfis Obrigatórios (SHALL)

| Perfil | Recurso Base | Obrigatoriedade |
|---|---|---|
| [`BeneficiarioBiometria`](StructureDefinition-BeneficiarioBiometria.html) | `Patient` | SHALL |
| [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.html) | `AuditEvent` | SHALL |
| [`OperadoraSaude`](StructureDefinition-OperadoraSaude.html) | `Organization` | SHALL |

### Perfis Recomendados (SHOULD)

| Perfil | Recurso Base | Obrigatoriedade |
|---|---|---|
| [`CapturaBiometricaFacial`](StructureDefinition-CapturaBiometricaFacial.html) | `Media` | SHOULD |
| [`ConsentimentoBiometria`](StructureDefinition-ConsentimentoBiometria.html) | `Consent` | SHOULD |
| [`AtendimentoBiometria`](StructureDefinition-AtendimentoBiometria.html) | `Encounter` | SHOULD |
| [`PrestadorSaude`](StructureDefinition-PrestadorSaude.html) | `Organization` | SHOULD |

## Operações FHIR Suportadas

| Operação | Recurso | Descrição |
|---|---|---|
| `create` (POST) | `Media` | Registrar captura biométrica inicial (CU 1) |
| `create` (POST) | `AuditEvent` | Registrar evento de autenticação biométrica (CU 2, 3, 4) |
| `create` (POST) | `Consent` | Registrar consentimento LGPD do beneficiário |
| `read` (GET) | `Patient` | Consultar status biométrico do beneficiário |
| `create` (POST) | `Encounter` | Registrar atendimento iniciado após autenticação |

## Extensions Obrigatórias

Ao registrar um `AuditEvent` de autenticação biométrica:

- **`ext-canal-autenticacao`** (obrigatório): identifica se a autenticação ocorreu via `sistema-operadora`, `sistema-prestador` ou `app-beneficiario`.
- **`ext-liveness-detection`** (opcional): indica se prova de vida passiva foi executada e o resultado.

## Fluxo Alternativo — Carteirinha

Quando o sistema de biometria está inoperante, a norma ANS v5 prevê o fluxo alternativo de apresentação da carteirinha de identificação. Neste caso:

- Nenhum `AuditEvent` de autenticação biométrica deve ser registrado.
- O `Encounter` pode ser registrado com nota indicando o uso do fluxo alternativo.
- O `outcome` do `AuditEvent` deve ser `#12` (falha fatal) se o sistema falhou antes de ser possível a autenticação.

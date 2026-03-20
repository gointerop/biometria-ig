# Casos de Uso - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* **Casos de Uso**

## Casos de Uso

# Casos de Uso

Este guia implementa os quatro casos de uso definidos na **Norma Orientativa ANS v5** para uso de biometria facial na identificação de beneficiários de planos de saúde.

-------

## Caso de Uso 1 — Captura Inicial da Biometria Facial

**Atores:** Beneficiário, Operadora/Prestador **Pré-condições:** Sistema de cadastro ativo; câmera habilitada.

### Fluxo Principal

1. Beneficiário acessa software da Operadora/Prestador.
1. Sistema solicita captura facial via câmera.
1. Beneficiário posiciona rosto conforme orientações.
1. Sistema valida qualidade da imagem (nível de detalhes, iluminação).
1. Biometria é criptografada e armazenada no banco de dados.

### Fluxos Alternativos

* **Validação falha:** Sistema solicita nova captura.
* **Sistema inoperante:** Operadora ou preposto cancela a captura e reagenda.

### Mapeamento FHIR

| | | |
| :--- | :--- | :--- |
| Captura da imagem facial | `Media` | [`CapturaBiometricaFacial`](StructureDefinition-CapturaBiometricaFacial.md) |
| Consentimento LGPD | `Consent` | [`ConsentimentoBiometria`](StructureDefinition-ConsentimentoBiometria.md) |

**Exemplo:** [Media/exemplo-captura-biometrica](Media-exemplo-captura-biometrica.md)

-------

## Caso de Uso 2 — Autenticação de Presença via Sistema da Operadora

**Atores:** Beneficiário, Sistema da Operadora **Pré-condições:** Biometria previamente cadastrada.

### Fluxo Principal

1. Usuário da operadora ou prestador inicia sessão no software.
1. Sistema captura a foto do beneficiário, transmite para o sistema da operadora e ativa autenticação facial.
1. Reconhecimento compara dados com template armazenado. Opcionalmente pode haver prova de vida (liveness) passivo, sem exigir movimento do beneficiário.
1. Caso reconheça que a fotografia captada é a mesma armazenada, retorna confirmação e registra a presença do beneficiário no atendimento.

### Fluxos Alternativos

* **Fluxo alternativo:** Exibição da Carteirinha de identificação do beneficiário para o usuário.
* **Validação falha:** Informa que o beneficiário não corresponde a nenhum registro armazenado.
* **Sistema inoperante:** Operadora ou preposto cancela a captura e segue para o fluxo alternativo.

### Mapeamento FHIR

| | | |
| :--- | :--- | :--- |
| Autenticação biométrica | `AuditEvent` | [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.md) |
| Canal:`sistema-operadora` | Extension | [`ext-canal-autenticacao`](StructureDefinition-ext-canal-autenticacao.md) |

**Exemplo:** [AuditEvent/exemplo-autenticacao-presenca](AuditEvent-exemplo-autenticacao-presenca.md)

-------

## Caso de Uso 3 — Autenticação no Início do Atendimento (Prestador)

**Atores:** Beneficiário, Sistema da Operadora **Pré-condições:** Biometria previamente cadastrada.

### Fluxo Principal

1. Usuário da operadora ou prestador inicia sessão no software.
1. Sistema captura a foto do beneficiário, transmite para o sistema da operadora e ativa autenticação facial.
1. Reconhecimento compara dados com template armazenado. Opcionalmente pode haver prova de vida (liveness) passivo.
1. Caso reconheça, retorna confirmação e autoriza o início do atendimento.

### Fluxos Alternativos

* **Fluxo alternativo:** Exibição da Carteirinha juntamente do documento oficial com foto.
* **Validação falha:** Informa que o beneficiário não corresponde e não autoriza o atendimento.
* **Sistema inoperante:** Operadora ou preposto cancela a captura e segue para o fluxo alternativo.

### Mapeamento FHIR

| | | |
| :--- | :--- | :--- |
| Autenticação biométrica | `AuditEvent` | [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.md) |
| Canal:`sistema-prestador` | Extension | [`ext-canal-autenticacao`](StructureDefinition-ext-canal-autenticacao.md) |
| Atendimento iniciado | `Encounter` | [`AtendimentoBiometria`](StructureDefinition-AtendimentoBiometria.md) |

**Exemplo:** [AuditEvent/exemplo-autenticacao-atendimento](AuditEvent-exemplo-autenticacao-atendimento.md)

-------

## Caso de Uso 4 — Autenticação via App da Operadora (Teleatendimento)

**Atores:** Beneficiário, Aplicativo da Operadora instalado no celular do beneficiário **Pré-condições:** Biometria previamente cadastrada e aplicativo da operadora instalado no celular.

### Fluxo Principal

1. Beneficiário inicia sessão no aplicativo da operadora.
1. Sistema captura a foto do beneficiário, transmite para o sistema da operadora e ativa autenticação facial.
1. Reconhecimento compara dados com template armazenado no sistema da operadora. Opcionalmente pode haver prova de vida (liveness) passivo.
1. Caso reconheça, retorna em tela para o beneficiário que a fotografia foi validada com sucesso e libera o atendimento.

### Fluxos Alternativos

* **Fluxo alternativo:** Processo de autorização existente.
* **Validação falha:** Informa que o beneficiário não corresponde a nenhum registro armazenado.
* **Sistema inoperante:** Operadora ou preposto cancela a captura e segue para o fluxo alternativo.

### Mapeamento FHIR

| | | |
| :--- | :--- | :--- |
| Autenticação biométrica | `AuditEvent` | [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.md) |
| Canal:`app-beneficiario` | Extension | [`ext-canal-autenticacao`](StructureDefinition-ext-canal-autenticacao.md) |

**Exemplo:** [AuditEvent/exemplo-autenticacao-teleatendimento](AuditEvent-exemplo-autenticacao-teleatendimento.md)


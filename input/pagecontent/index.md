# Guia de Implementação FHIR R4 — Biometria Facial de Beneficiários

## Introdução

Este Guia de Implementação (IG) FHIR R4 define os artefatos necessários para o uso de **biometria facial** na identificação de beneficiários de planos privados de saúde em Prestadores e Operadoras, conforme a **Norma Orientativa ANS v5** (*Norma orientativa de uso de solução de Biometria Facial na identificação de beneficiários de planos privados de saúde em Prestadores e Operadoras*).

## Objetivos

- Padronizar o intercâmbio de informações de biometria facial entre operadoras e prestadores usando FHIR R4.
- Garantir rastreabilidade e auditoria de todos os eventos de captura e autenticação biométrica.
- Suportar os quatro casos de uso definidos pela ANS, cobrindo ambientes presenciais e de teleatendimento.
- Prover um modelo de dados compatível com a **LGPD (Lei 13.709/2018)**, incluindo o registro de consentimento do beneficiário.

## Escopo

Este guia cobre os seguintes casos de uso:

| # | Caso de Uso | Canal |
|---|---|---|
| 1 | Captura Inicial da Biometria Facial | Presencial (Operadora/Prestador) |
| 2 | Autenticação de Presença via Sistema da Operadora | Presencial |
| 3 | Autenticação no Início do Atendimento (Prestador) | Presencial |
| 4 | Autenticação via Aplicativo da Operadora | Teleatendimento |

## Recursos Principais

| Recurso FHIR | Perfil Definido | Finalidade |
|---|---|---|
| `Patient` | `BeneficiarioBiometria` | Beneficiário com status de cadastro biométrico |
| `Organization` | `OperadoraSaude` | Operadora de plano de saúde |
| `Organization` | `PrestadorSaude` | Prestador de serviços de saúde |
| `Media` | `CapturaBiometricaFacial` | Registro da captura facial (CU 1) |
| `AuditEvent` | `AutenticacaoBiometricaFacial` | Evento de autenticação (CU 2, 3, 4) |
| `Consent` | `ConsentimentoBiometria` | Consentimento LGPD do beneficiário |
| `Encounter` | `AtendimentoBiometria` | Atendimento com autenticação biométrica |

## Publicador

**GOInterop Tecnologia LTDA** — [gointerop.com](https://gointerop.com)

Contato: contato@gointerop.com

## Base Normativa

- Norma Orientativa ANS v5 — *Uso de Biometria Facial na identificação de beneficiários de planos privados de saúde*
- FHIR R4 (HL7 FHIR Release 4.0.1)
- LGPD — Lei Geral de Proteção de Dados Pessoais (Lei 13.709/2018)

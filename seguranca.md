# Segurança - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* **Segurança**

## Segurança

# Segurança

## LGPD e Dados Biométricos

A **biometria facial é um dado pessoal sensível** conforme o Art. 5º, II da **Lei Geral de Proteção de Dados Pessoais (LGPD — Lei 13.709/2018)**. Seu tratamento requer:

* **Consentimento explícito** do titular (Art. 11, I): modelado pelo perfil [`ConsentimentoBiometria`](StructureDefinition-ConsentimentoBiometria.md).
* **Finalidade específica**: a biometria coletada só pode ser usada para identificação no contexto do plano de saúde.
* **Necessidade e proporcionalidade**: coletar apenas os dados estritamente necessários.
* **Segurança**: adotar medidas técnicas e administrativas para proteger os dados de acessos não autorizados.

## Armazenamento do Template Biométrico

* O **template biométrico** (representação matemática do rosto) deve ser criptografado antes do armazenamento.
* A **imagem facial bruta** não deve ser armazenada desnecessariamente — apenas o template derivado é necessário para autenticação.
* O recurso [`CapturaBiometricaFacial`](StructureDefinition-CapturaBiometricaFacial.md) (`Media`) representa o momento da captura; o campo `content.data` deve conter apenas dados criptografados ou uma referência segura.

## Prova de Vida (Liveness Detection)

A norma ANS v5 prevê o uso **opcional** de **liveness passivo** — verificação de que a imagem capturada corresponde a uma pessoa real presente no momento, sem exigir movimento do beneficiário.

A extension [`ext-liveness-detection`](StructureDefinition-ext-liveness-detection.md) registra:

* Se o liveness foi executado (`executado: true/false`)
* O resultado (`aprovado | reprovado | nao-executado`)

## Segurança na Transmissão

* Todas as transmissões de dados biométricos devem ocorrer via **TLS 1.2+**.
* O servidor FHIR deve exigir **autenticação OAuth 2.0 / SMART on FHIR** para todas as operações relacionadas a biometria.
* Logs de auditoria (`AuditEvent`) devem ser imutáveis e protegidos contra alteração.

## Auditoria

Todos os eventos de autenticação biométrica (sucesso ou falha) devem ser registrados como [`AutenticacaoBiometricaFacial`](StructureDefinition-AutenticacaoBiometricaFacial.md) (`AuditEvent`), incluindo:

* Data e hora (`recorded`)
* Resultado (`outcome`)
* Canal utilizado (`ext-canal-autenticacao`)
* Referências ao beneficiário e ao sistema responsável pela autenticação


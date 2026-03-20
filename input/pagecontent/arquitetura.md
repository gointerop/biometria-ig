# Arquitetura

## Atores

| Ator | Perfil FHIR | Descrição |
|---|---|---|
| **Beneficiário** | [`BeneficiarioBiometria`](StructureDefinition-BeneficiarioBiometria.html) | Titular do plano de saúde cuja biometria facial é coletada e verificada |
| **Operadora** | [`OperadoraSaude`](StructureDefinition-OperadoraSaude.html) | Plano de saúde responsável pelo armazenamento e validação dos templates biométricos |
| **Prestador** | [`PrestadorSaude`](StructureDefinition-PrestadorSaude.html) | Clínica, hospital ou consultório que utiliza a biometria para autenticar o beneficiário no atendimento |

## Fluxo de Dados FHIR

```
Beneficiário ─────────── Captura Facial ──────────► CapturaBiometricaFacial (Media)
     │                         │
     │                         ▼
     │              Operadora armazena template
     │                         │
     ├──── Atendimento ────────┤
     │                         │
     │              Sistema compara foto × template
     │                         │
     │                         ▼
     └──── Resultado ─────► AutenticacaoBiometricaFacial (AuditEvent)
                                │
                                ├── Canal: sistema-operadora (CU 2)
                                ├── Canal: sistema-prestador (CU 3)
                                └── Canal: app-beneficiario  (CU 4)
```

## Artefatos por Caso de Uso

### CU 1 — Captura Inicial

```
POST /Media                          ← CapturaBiometricaFacial
POST /Consent                        ← ConsentimentoBiometria
PATCH /Patient/{id}                  ← atualiza ext-status-biometrico = 'cadastrado'
```

### CU 2 / CU 3 — Autenticação Presencial

```
POST /AuditEvent                     ← AutenticacaoBiometricaFacial
  extension[canalAutenticacao]:      'sistema-operadora' | 'sistema-prestador'
  outcome:                           0 (sucesso) | 4 (falha)
POST /Encounter                      ← AtendimentoBiometria (somente se sucesso)
```

### CU 4 — Autenticação via App (Teleatendimento)

```
POST /AuditEvent                     ← AutenticacaoBiometricaFacial
  extension[canalAutenticacao]:      'app-beneficiario'
  extension[livenessDetection]:      executado + resultado
  outcome:                           0 (sucesso) | 4 (falha)
```

## Modelo de Referências

```
ConsentimentoBiometria ──► BeneficiarioBiometria
ConsentimentoBiometria ──► OperadoraSaude
CapturaBiometricaFacial ──► BeneficiarioBiometria
CapturaBiometricaFacial ──► OperadoraSaude | PrestadorSaude
AutenticacaoBiometricaFacial ──► BeneficiarioBiometria
AutenticacaoBiometricaFacial ──► OperadoraSaude | PrestadorSaude
AtendimentoBiometria ──► BeneficiarioBiometria
AtendimentoBiometria ──► PrestadorSaude
```

# Atendimento com Autenticação Biométrica - Guia de Implementação FHIR R4 para Biometria Facial de Beneficiários v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Atendimento com Autenticação Biométrica**

## Resource Profile: Atendimento com Autenticação Biométrica 

| | |
| :--- | :--- |
| *Official URL*:https://biometria.gointerop.com/fhir/StructureDefinition/AtendimentoBiometria | *Version*:0.1.0 |
| Active as of 2026-03-20 | *Computable Name*:AtendimentoBiometria |

 
Atendimento de saúde onde o beneficiário foi autenticado via biometria facial no início. Vincula a autenticação biométrica ao atendimento real. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5. 

**Usos:**

* Exemplos para este Perfil: [Encounter/exemplo-atendimento](Encounter-exemplo-atendimento.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/com.gointerop.biometria.fhir|current/StructureDefinition/AtendimentoBiometria)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AtendimentoBiometria.csv), [Excel](StructureDefinition-AtendimentoBiometria.xlsx), [Schematron](StructureDefinition-AtendimentoBiometria.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AtendimentoBiometria",
  "url" : "https://biometria.gointerop.com/fhir/StructureDefinition/AtendimentoBiometria",
  "version" : "0.1.0",
  "name" : "AtendimentoBiometria",
  "title" : "Atendimento com Autenticação Biométrica",
  "status" : "active",
  "date" : "2026-03-20T20:23:12+00:00",
  "publisher" : "GOInterop Tecnologia LTDA",
  "contact" : [{
    "name" : "GOInterop Tecnologia LTDA",
    "telecom" : [{
      "system" : "url",
      "value" : "https://gointerop.com"
    },
    {
      "system" : "email",
      "value" : "contato@gointerop.com"
    }]
  },
  {
    "name" : "Italo Macedo",
    "telecom" : [{
      "system" : "email",
      "value" : "italo@gointerop.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Claudio Junior",
    "telecom" : [{
      "system" : "email",
      "value" : "claudio@gointerop.com"
    }]
  },
  {
    "name" : "Fernando Araujo",
    "telecom" : [{
      "system" : "email",
      "value" : "fernando@gointerop.com"
    }]
  }],
  "description" : "Atendimento de saúde onde o beneficiário foi autenticado via biometria facial no início. Vincula a autenticação biométrica ao atendimento real. Cobre os Casos de Uso 2, 3 e 4 da norma ANS v5.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "planned | arrived | triaged | in-progress | onleave | finished | cancelled",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Classe do atendimento: ambulatorial, hospitalar, urgência, teleatendimento, etc.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "Tipo/especialidade do atendimento",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Beneficiário atendido e autenticado por biometria",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/BeneficiarioBiometria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Profissional de saúde que realizou o atendimento",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Período do atendimento",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "Início do atendimento (após autenticação biométrica bem-sucedida)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "Prestador onde ocorreu o atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://biometria.gointerop.com/fhir/StructureDefinition/PrestadorSaude"]
      }],
      "mustSupport" : true
    }]
  }
}

```

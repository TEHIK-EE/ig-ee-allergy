# patientExampleMPI - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patientExampleMPI**

## Example Patient: patientExampleMPI

Language: et

Profile: [EE MPI Patient Verified](https://fhir.ee/packages/mpi/1.5.0/site/StructureDefinition-ee-mpi-patient-verified.html)

Leena Lööve (official) Female, DoB Unknown ( https://fhir.ee/sid/pid/est/ni#38301105216)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | `https://fhir.ee/sid/pid/est/ppn`/K0307337 (, period: (?) --> 2023-12-28) |
| Contact Detail | EE (work) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patientExampleMPI",
  "meta" : {
    "profile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
  },
  "language" : "et",
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pid/est/ni",
    "value" : "38301105216"
  },
  {
    "system" : "https://fhir.ee/sid/pid/est/ppn",
    "value" : "K0307337",
    "period" : {
      "end" : "2023-12-28"
    },
    "assigner" : {
      "display" : "Estonian Police and Board Agency"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Lööve  ",
    "given" : ["Leena"]
  }],
  "gender" : "female",
  "address" : [{
    "use" : "work",
    "country" : "EE"
  }]
}

```

# 🧪 Laboratorio de HCP Terraform

¡Bienvenido al laboratorio de HCP Terraform!

En este repositorio encontrarás ejercicios prácticos para trabajar con
**Terraform**, **Google Cloud Platform (GCP)** y **HCP Terraform**.

La rama `hcp-terraform` contiene las instrucciones base para llevar una
configuración de Terraform a un flujo de ejecución remota y centralizada con
HCP Terraform.

El código que utilizarás en este laboratorio es el que preparaste previamente
en tu rama personal de `terraform-cli`. Este README no contiene ejercicios de
desarrollo; funciona como una guía general para configurar y operar el flujo
desde HCP Terraform.

---

## 📂 Estructura del repositorio

```text
.
├── README.md
└── Ejercicios/
    ├── Ejercicio1/
    │   └── Ejercicio1.md
    └── EjercicioN/
        └── EjercicioN.md
```

---

## 📘 Lista de ejercicios

## Ejercicio 1 — Llevar un bucket en GCP a HCP Terraform

En este ejercicio prepararás y ejecutarás desde **HCP Terraform** una
configuración de Terraform para crear un **bucket de Cloud Storage** en GCP.

Los ejercicios futuros seguirán la misma estructura dentro de `Ejercicios/`,
por ejemplo: `Ejercicios/EjercicioN/EjercicioN.md`.

Aprenderás:

* Qué es un workspace en HCP Terraform
* Cómo trabajar en la organización `liv-infraops-training` y el proyecto `dev`
* Cómo conectar un repositorio a HCP Terraform
* Cómo trabajar con una rama específica del repositorio
* Cómo configurar variables desde HCP Terraform
* Cómo ejecutar un `plan` remoto
* Cómo ejecutar un `apply` remoto
* Cómo consultar outputs desde la plataforma
* Cómo administrar el `terraform state` de forma centralizada
* Cómo destruir infraestructura desde HCP Terraform

---

## 🚀 Acceder a las instrucciones del Ejercicio 1

Desde el directorio raíz del repositorio, abre las instrucciones generales de
operación en HCP Terraform:

```bash
cd Ejercicios/Ejercicio1
less Ejercicio1.md
```

También puedes abrir `Ejercicio1.md` con tu editor de código. Sigue sus pasos
para conectar en HCP Terraform el código desarrollado en tu rama personal de
`terraform-cli`.

## 🧠 Requisitos

Antes de comenzar, debes tener:

* Terraform instalado
* Google Cloud SDK (`gcloud`) instalado
* Acceso al proyecto `sit-devops-training` en GCP
* Acceso a la organización `liv-infraops-training` en HCP Terraform
* Acceso al proyecto `dev` en HCP Terraform
* Permisos para crear o configurar workspaces en HCP Terraform
* Acceso al repositorio desde HCP Terraform

Verifica Terraform:

```bash
terraform version
```

Verifica gcloud:

```bash
gcloud version
```

## ⚙️ Ejecución con HCP Terraform

A diferencia del ejercicio básico con Terraform CLI, en esta rama el objetivo es que la ejecución se realice desde **HCP Terraform**.

HCP Terraform se encargará de:

* Ejecutar el `terraform plan`
* Ejecutar el `terraform apply`
* Almacenar el `terraform state`
* Administrar variables del workspace
* Mostrar el historial de runs
* Centralizar la operación del código Terraform

El workspace deberá seguir el formato:

```text
liv-dev-nombre-de-usuario
```

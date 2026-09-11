# 🧪 Laboratorio de Terraform CLI

¡Bienvenido al laboratorio de Terraform CLI!

En este repositorio encontrarás ejercicios prácticos para aprender
**Infraestructura como Código (IaC)** usando **Terraform** y **Google Cloud
Platform (GCP)**.

## 📂 Estructura del repositorio

```text
.
├── README.md
└── Ejercicios/
    ├── Ejercicio1/
    │   └── Ejercicio1.md
    └── EjercicioN.md
```

---

## 📘 Lista de ejercicios

## Ejercicio 1 — Preparar una configuración de Terraform para HCP Terraform

En este ejercicio prepararás los archivos de Terraform que se utilizarán en un
futuro despliegue con HCP Terraform. El objetivo de este laboratorio no es
crear todavía el bucket de **Cloud Storage**, sino dejar una configuración
ordenada, válida y lista para ser utilizada posteriormente.

Aprenderás:

* Organizar una configuración básica de Terraform.
* Definir providers, resources y variables.
* Ejecutar `terraform init` y `terraform plan`.
* Aplicar criterios de calidad y buenas prácticas al código Terraform.
* Preparar la configuración para ejecutarla posteriormente desde HCP Terraform.

---

## 🚀 Acceder al Ejercicio 1

Una vez que estés en la rama `terraform-cli`, define tu usuario y crea tu rama
personal:

```bash
export USUARIO=nombre-de-usuario
git switch -c terraform-cli-$USUARIO
```

Reemplaza `nombre-de-usuario` por tu usuario real. Por ejemplo:

```bash
export USUARIO=rcruzm05
```

Entra al directorio del ejercicio y abre sus instrucciones:

```bash
cd Ejercicios/Ejercicio1
less Ejercicio1.md
```

También puedes abrir `Ejercicio1.md` con tu editor de código. Sigue los pasos
en orden y realiza las actividades desde tu rama personal.

Cuando termines, guarda y publica tus cambios:

```bash
git add .
git commit -m "feat: resolver ejercicio de Terraform CLI"
git push -u origin terraform-cli-$USUARIO
```

## 🧠 Requisitos

Antes de comenzar, debes tener:

* Terraform instalado
* Google Cloud SDK (`gcloud`) instalado
* Acceso a proyecto sit-devops-training

Verifica Terraform:

```bash
terraform version
```

Verifica gcloud:

```bash
gcloud version
```

## ⚠️ Nota importante

Este repositorio prepara infraestructura real en GCP. En este ejercicio no
ejecutes `terraform apply` ni `terraform destroy` desde tu equipo: esas
operaciones se realizarán posteriormente desde HCP Terraform.

Revisa siempre el plan y confirma que los cambios correspondan a los recursos
esperados.

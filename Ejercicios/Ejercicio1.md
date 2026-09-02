# 🧪 Ejercicio 1 — Preparar una configuración de Terraform para HCP Terraform

Este ejercicio introduce los conceptos básicos de **Terraform** mediante la
preparación de una configuración para un futuro despliegue en **HCP Terraform**.
La infraestructura no se desplegará desde este laboratorio.

La intención es que aprendas el flujo de validación de Terraform CLI y prepares
el código que posteriormente ejecutará HCP Terraform.

---

# 🎯 Objetivo

Preparar todos los archivos necesarios para desplegar posteriormente un
**bucket de Cloud Storage** en GCP mediante HCP Terraform.

Al finalizar el ejercicio deberás haber:

* Preparado una estructura básica de archivos Terraform.
* Configurado el provider de Google Cloud.
* Declarado un recurso `google_storage_bucket`.
* Definido las variables necesarias para el futuro despliegue.
* Aplicado criterios de calidad de código Terraform.
* Ejecutado el flujo de validación con Terraform CLI.
* Dejado la configuración lista para su ejecución desde HCP Terraform.

---

# 🧠 Conceptos que practicarás

Durante este ejercicio practicarás los siguientes conceptos:

| Concepto           | Descripción                                                                      |
| ------------------ | -------------------------------------------------------------------------------- |
| Provider           | Plugin que permite a Terraform interactuar con una plataforma, en este caso GCP. |
| Resource           | Bloque que representa infraestructura que Terraform debe crear o administrar.    |
| Variable           | Valor parametrizable que permite reutilizar el código.                           |
| State              | Archivo donde Terraform guarda el estado de los recursos administrados.          |
| Plan               | Vista previa de los cambios que Terraform realizará.                             |

---

# 📂 Paso 1 — Revisar la estructura esperada

Al finalizar el ejercicio, el directorio `Ejercicio1` deberá tener la siguiente
estructura:

```text
Ejercicios/
└── Ejercicio1/
    ├── Ejercicio1.md
    ├── versions.tf
    ├── provider.tf
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── .tflint.hcl
    └── .gitignore
```

---

# 📄 Paso 2 — Configurar versiones en `versions.tf`

El archivo `versions.tf` define la versión mínima de Terraform y los providers requeridos.

---

# 📄 Paso 3 — Configurar el provider en `provider.tf`

El archivo `provider.tf` define cómo Terraform se conectará a GCP.

---

# 📄 Paso 4 — Definir variables en `variables.tf`

El archivo `variables.tf` contiene las variables que usará el código Terraform.

---

# 📄 Paso 5 — Crear el recurso en `main.tf`

El archivo `main.tf` contendrá la definición del bucket.

---

# 🧹 Paso 6 — Crear los archivos de calidad y control de versiones

Crea el archivo `.tflint.hcl` en el directorio raíz del ejercicio y agrega el
siguiente contenido:

```hcl
# Permite que TFLint procese estructuras con módulos y subdirectorios.
config {
  call_module_type = "none"
}

# Habilita las reglas base recomendadas de Terraform.
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# Habilita el ruleset versionado para Google Cloud.
plugin "google" {
  enabled = true
  version = "0.38.0"
  source  = "github.com/terraform-linters/tflint-ruleset-google"
}
```

Crea también un archivo `.gitignore`. El contenido de este archivo será
proporcionado durante la sesión.

---

# 🚀 Paso 7 — Inicializar Terraform

Ejecuta:

```bash
terraform init
```

Este comando inicializa el directorio de trabajo y descarga el provider de Google.

Resultado esperado:

```text
Terraform has been successfully initialized!
```

---

# 🧹 Paso 8 — Formatear archivos Terraform

`terraform fmt` aplica el formato canónico a los archivos Terraform y ayuda a
mantener un estilo consistente. Primero puedes revisar cuáles archivos no cumplen con el formato:

```bash
terraform fmt -check -recursive
```

Después, aplica el formateo a los archivos:

```bash
terraform fmt -recursive
```

---

# ✅ Paso 9 — Validar la configuración

`terraform validate` comprueba que la sintaxis, los bloques y las expresiones
de la configuración sean válidos. No despliega infraestructura ni consulta
permisos en GCP.

Ejecuta:

```bash
terraform validate
```

Este comando valida que la configuración sea sintácticamente correcta.

Resultado esperado:

```text
Success! The configuration is valid.
```

---

# 🧪 Paso 10 — Validar calidad con TFLint

TFLint identifica posibles errores, declaraciones no utilizadas y malas
prácticas que `terraform validate` no detecta. Además, el plugin de Google Cloud
aplica reglas específicas para GCP.

Si TFLint no está instalado, sigue una de estas opciones:

### Linux

Puedes instalar la versión más reciente usando el instalador oficial:

```bash
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
```

> Este comando ejecuta directamente un script remoto. Si tu política de
> seguridad no lo permite, utiliza la instalación manual desde el repositorio
> oficial.

### macOS

Con Homebrew:

```bash
brew install tflint
```

Comprueba la instalación:

```bash
tflint --version
```

Inicializa el plugin de Google Cloud y ejecuta el análisis:

```bash
tflint --init
tflint --recursive
```

El resultado esperado es que TFLint termine sin errores ni hallazgos
bloqueantes.


---

# 🚀 Paso 11 — Preparar la configuración para HCP Terraform

En este laboratorio no ejecutes `terraform apply`. La ejecución real de la
infraestructura se realizará posteriormente desde HCP Terraform.

Antes de entregar tu configuración, confirma que:

* El provider y los recursos están correctamente definidos.
* Las variables están definidas y listas para recibir valores desde HCP Terraform.
* `terraform fmt -check`, `terraform validate`, `terraform plan` y TFLint terminan
  correctamente.

---

# 📦 Paso 12 — Revisar los archivos generados localmente

Después de ejecutar `terraform init`, Terraform generará archivos de trabajo
locales en tu directorio.

Puedes listar los archivos:

```bash
ls -la
```

Deberías ver archivos como:

```text
.terraform/
.terraform.lock.hcl
```

En este laboratorio no se generará `terraform.tfstate`, porque no se ejecutará
`terraform apply` localmente.

> El estado y la ejecución se gestionarán posteriormente desde HCP Terraform.

---

# ✅ Resultado esperado

Al finalizar este ejercicio, deberás haber logrado lo siguiente:

* Preparar una estructura básica de archivos Terraform.
* Configurar el provider de Google Cloud.
* Definir variables de entrada.
* Declarar un bucket de Cloud Storage.
* Ejecutar `terraform init`.
* Ejecutar `terraform fmt`.
* Ejecutar `terraform validate`.
* Ejecutar `terraform plan`.
* Ejecutar `tflint --init` y `tflint --recursive`.
* Aplicar criterios de calidad al código Terraform.
* Dejar la configuración preparada para su ejecución desde HCP Terraform.

---

# ⚠️ Nota importante

Este ejercicio prepara una configuración para infraestructura real en GCP.
No ejecutes `terraform apply` ni `terraform destroy` desde tu equipo; esas
operaciones se realizarán posteriormente desde HCP Terraform.

No subas credenciales, llaves JSON ni información sensible al repositorio.
lmosorioa

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

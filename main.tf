terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

locals {
  app_code = <<EOF
console.log("Hello from Terraform-created Node.js app!");
EOF
}

resource "local_file" "webapp_app" {
  content  = local.app_code
  filename = "${path.module}/webapp/src/index.js"
}

output "webapp_file_path" {
  value       = resource.local_file.webapp_app.filename
  description = "The full path to the web application's index.js file."
}


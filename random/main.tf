terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.1"
    }
  }
  backend "local" {
    path = "./state/state.tfstate"
  }
}

variable "name" {
  type = string
}

resource "random_pet" "tofu_pet" {
}

output "name" {
  value = random_pet.tofu_pet.id
}

output "message" {
  value = "My name is ${var.name}"
}


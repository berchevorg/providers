terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.24.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.24.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.4.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    uname = {
      source  = "julienlevasseur/uname"
      version = "0.0.3"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.3.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.2"
    }
  }
}



resource "random_pet" "name" {
 length    = "49"
 separator = "-"
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo hello ${random_pet.name.id}"
  }
}

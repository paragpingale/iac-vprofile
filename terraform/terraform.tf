terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "gitops-project-s3"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  # this is the miniumum version of terraform to use
  # required_version = "~> 1.6.3"

  # USE THIS ONE FOR staging and deployment
  required_version = "~> 1.6.6"
  
}


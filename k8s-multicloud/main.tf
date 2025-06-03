terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 5.0"
#    }
#    google = {
#      source  = "hashicorp/google"
#      version = "~> 4.0"
#    }
  }

  required_version = ">= 1.3"
}

provider "azurerm" {
  features {}


}

#provider "aws" {
#  region = var.aws_region
#}
#
#provider "google" {
#  credentials = file(var.gcp_sa_key_file)
#  project     = var.gcp_project
#  region      = var.gcp_region
#}

module "azure" {
  source = "./azure"
  location = var.azure_location
}

#module "aws" {
#  source     = "./aws"
#  region     = var.aws_region
#  subnet_ids = var.aws_subnet_ids
#}
#
#module "gcp" {
#  source         = "./gcp"
#  region         = var.gcp_region
#  gke_node_count = 2
#}

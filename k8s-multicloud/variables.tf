variable "aws_region" {
  default = "eastus-1"
}


variable "aws_subnet_ids" {
  type = list(string)
  default = ["subnet-12345678", "subnet-87654321"]
}

variable "gcp_region" {
  default = "us-east1"
}

variable "gcp_project" {
  default = "gcp-project-id"
  
}

#variable "gcp_sa_key_file" {
#  description = "Path to GCP service account key file"
#  type        = string
#  default     = "terraform-sa-key.json"
#}

variable "azure_location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
  
}
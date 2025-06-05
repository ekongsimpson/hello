variable "region" {
  description = "GCP region"
  type        = string
}
variable "gke_node_count" {
  description = "Initial number of nodes in GKE cluster"
  type        = number
  default     = 2
}
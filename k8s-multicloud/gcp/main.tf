resource "google_container_cluster" "gke" {
  name     = "gke-cluster"
  location = var.region

  initial_node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 30              # Reduce from 100+ to stay within quota
    disk_type    = "pd-ssd"        # Keep SSD; can switch to pd-standard to save quota

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

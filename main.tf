# Create MongoDB Atlas Cluster
resource "mongodbatlas_cluster" "cluster" {
  project_id = var.atlas_project_id
  name       = var.cluster_name

  # Provider Settings "block"
  provider_name               = var.provider_name
  backing_provider_name       = var.backing_provider_name
  provider_region_name        = var.provider_region_name
  provider_instance_size_name = var.provider_instance_size_name
}

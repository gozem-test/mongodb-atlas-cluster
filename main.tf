# Create MongoDB Atlas Cluster
resource "mongodbatlas_advanced_cluster" "cluster" {
  project_id   = var.atlas_project_id
  name         = var.cluster_name
  cluster_type = var.cluster_type

  # Provider Settings "block"
  # provider_name               = var.provider_name
  # backing_provider_name       = var.backing_provider_name
  # provider_region_name        = var.provider_region_name
  # provider_instance_size_name = var.provider_instance_size_name

  replication_specs {
    region_configs {
      electable_specs {
        instance_size = var.provider_instance_size_name
        node_count    = var.node_count
      }

      priority      = var.priority
      provider_name = var.backing_provider_name
      region_name   = var.provider_region_name
    }
  }
}

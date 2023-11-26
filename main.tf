# Create MongoDB Atlas Cluster
resource "mongodbatlas_cluster" "cluster" {
  project_id   = var.atlas_project_id
  name         = var.cluster_name
  cluster_type = var.cluster_type
  num_shards   = var.num_shards

  # Provider Settings "block"
  provider_name               = var.provider_name
  backing_provider_name       = var.backing_provider_name
  provider_region_name        = var.provider_region_name
  provider_instance_size_name = var.provider_instance_size_name

  replication_specs {
    num_shards = var.num_shards
    regions_config {
      region_name     = var.provider_region_name
      electable_nodes = var.node_count
      priority        = var.priority
    }
  }
}

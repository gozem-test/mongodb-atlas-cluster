output "standard" {
  # value = mongodbatlas_cluster.cluster.connection_strings[0].standard
  value = mongodbatlas_advanced_cluster.cluster.connection_strings[0].standard
}

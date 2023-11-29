variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "MONGODB_ATLAS_PUBLIC_KEY" {
  type = string
}

variable "MONGODB_ATLAS_PRIVATE_KEY" {
  type = string
}

variable "atlas_project_id" {
  type        = string
  description = "(Required) The unique ID for the project to create the database user."
}

variable "cluster_name" {
  type        = string
  description = "(Required) Name of the cluster as it appears in Atlas. Once the cluster is created, its name cannot be changed. WARNING Changing the name will result in destruction of the existing cluster and the creation of a new cluster."
}

variable "cluster_type" {
  type        = string
  default     = "REPLICASET"
  description = "(Required) Atlas provides different instance sizes, each with a default storage capacity and RAM size. The instance size you select is used for all the data-bearing servers in your cluster. Accepted values include: REPLICASET, SHARED, GEOSHARED"
}

variable "num_shards" {
  type        = number
  default     = 1
  description = "(Optional) Selects whether the cluster is a replica set or a sharded cluster. If you use the replicationSpecs parameter, you must set num_shards."
}

variable "encryption_at_rest_provider" {
  type        = string
  description = "(Optional) Possible values are AWS, GCP, AZURE or NONE. Only needed if you desire to manage the keys. You must configure encryption at rest for the Atlas project before enabling it on any cluster in the project."
}

variable "provider_name" {
  type        = string
  default     = "TENANT"
  description = "(Required) Cloud service provider on which the servers are provisioned. The possible values are AWS (Amazon Web Services), GCP (Google Cloud Platform), AZURE (Microsoft Azure), TENANT (A multi-tenant deployment on one of the supported cloud service providers. Only valid when providerSettings.instanceSizeName is either M2 or M5.)"
}

variable "backing_provider_name" {
  type        = string
  default     = "AWS"
  description = "(Optional) Cloud service provider on which the server for a multi-tenant cluster is provisioned. This setting is only valid when providerSetting.providerName is TENANT and providerSetting.instanceSizeName is M2 or M5. The possible values are AWS (Amazon Web Services), GCP (Google Cloud Platform), AZURE (Microsoft Azure)."
}

variable "provider_region_name" {
  type        = string
  default     = "US_EAST_1"
  description = "(Optional) Physical location of your MongoDB cluster. The region you choose can affect network latency for clients accessing your databases. Requires the Atlas region name. Do not specify this field when creating a multi-region cluster using the replicationSpec document or a Global Cluster with the replicationSpecs array."
}

variable "provider_instance_size_name" {
  type        = string
  default     = "M0"
  description = "(Required) Atlas provides different instance sizes, each with a default storage capacity and RAM size. The instance size you select is used for all the data-bearing servers in your cluster."
}

variable "node_count" {
  type        = number
  default     = 3
  description = "(Optional) Number of nodes of the given type for MongoDB Atlas to deploy to the region."
}

variable "priority" {
  type        = number
  default     = 7
  description = "(Optional) Election priority of the region. For regions with only read-only nodes, set this value to 0. The highest priority is 7."
}

variable "msk_clusters" {
  description = <<EOT
Map of msk_clusters, attributes below
Required:
    - cluster_name
    - kafka_version
    - number_of_broker_nodes
    - broker_node_group_info (block):
        - az_distribution (optional)
        - client_subnets (required)
        - connectivity_info (optional, block):
            - network_type (optional)
            - public_access (optional, block):
                - type (optional)
            - vpc_connectivity (optional, block):
                - client_authentication (optional, block):
                    - sasl (optional, block):
                        - iam (optional)
                        - scram (optional)
                    - tls (optional)
        - instance_type (required)
        - security_groups (required)
        - storage_info (optional, block):
            - ebs_storage_info (optional, block):
                - provisioned_throughput (optional, block):
                    - enabled (optional)
                    - volume_throughput (optional)
                - volume_size (optional)
Optional:
    - enhanced_monitoring
    - region
    - storage_mode
    - tags
    - tags_all
    - client_authentication (block):
        - sasl (optional, block):
            - iam (optional)
            - scram (optional)
        - tls (optional, block):
            - certificate_authority_arns (optional)
        - unauthenticated (optional)
    - configuration_info (block):
        - arn (required)
        - revision (required)
    - encryption_info (block):
        - encryption_at_rest_kms_key_arn (optional)
        - encryption_in_transit (optional, block):
            - client_broker (optional)
            - in_cluster (optional)
    - logging_info (block):
        - broker_logs (required, block):
            - cloudwatch_logs (optional, block):
                - enabled (required)
                - log_group (optional)
            - firehose (optional, block):
                - delivery_stream (optional)
                - enabled (required)
            - s3 (optional, block):
                - bucket (optional)
                - enabled (required)
                - prefix (optional)
    - open_monitoring (block):
        - prometheus (required, block):
            - jmx_exporter (optional, block):
                - enabled_in_broker (required)
            - node_exporter (optional, block):
                - enabled_in_broker (required)
    - rebalancing (block):
        - status (required)
EOT

  type = map(object({
    cluster_name           = string
    kafka_version          = string
    number_of_broker_nodes = number
    enhanced_monitoring    = optional(string)
    region                 = optional(string)
    storage_mode           = optional(string)
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
    broker_node_group_info = object({
      az_distribution = optional(string)
      client_subnets  = set(string)
      connectivity_info = optional(object({
        network_type = optional(string)
        public_access = optional(object({
          type = optional(string)
        }))
        vpc_connectivity = optional(object({
          client_authentication = optional(object({
            sasl = optional(object({
              iam   = optional(bool)
              scram = optional(bool)
            }))
            tls = optional(bool)
          }))
        }))
      }))
      instance_type   = string
      security_groups = set(string)
      storage_info = optional(object({
        ebs_storage_info = optional(object({
          provisioned_throughput = optional(object({
            enabled           = optional(bool)
            volume_throughput = optional(number)
          }))
          volume_size = optional(number)
        }))
      }))
    })
    client_authentication = optional(object({
      sasl = optional(object({
        iam   = optional(bool)
        scram = optional(bool)
      }))
      tls = optional(object({
        certificate_authority_arns = optional(set(string))
      }))
      unauthenticated = optional(bool)
    }))
    configuration_info = optional(object({
      arn      = string
      revision = number
    }))
    encryption_info = optional(object({
      encryption_at_rest_kms_key_arn = optional(string)
      encryption_in_transit = optional(object({
        client_broker = optional(string)
        in_cluster    = optional(bool)
      }))
    }))
    logging_info = optional(object({
      broker_logs = object({
        cloudwatch_logs = optional(object({
          enabled   = bool
          log_group = optional(string)
        }))
        firehose = optional(object({
          delivery_stream = optional(string)
          enabled         = bool
        }))
        s3 = optional(object({
          bucket  = optional(string)
          enabled = bool
          prefix  = optional(string)
        }))
      })
    }))
    open_monitoring = optional(object({
      prometheus = object({
        jmx_exporter = optional(object({
          enabled_in_broker = bool
        }))
        node_exporter = optional(object({
          enabled_in_broker = bool
        }))
      })
    }))
    rebalancing = optional(object({
      status = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.msk_clusters : (
        v.broker_node_group_info.storage_info == null || (v.broker_node_group_info.storage_info.ebs_storage_info == null || (v.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput == null || (v.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput == null || (v.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput >= 250 && v.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput <= 2375))))
      )
    ])
    error_message = "must be between 250 and 2375"
  }
  validation {
    condition = alltrue([
      for k, v in var.msk_clusters : (
        v.configuration_info == null || (v.configuration_info.revision >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.msk_clusters : (
        length(v.kafka_version) >= 1 && length(v.kafka_version) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


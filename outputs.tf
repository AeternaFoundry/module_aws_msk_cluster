output "msk_clusters_id" {
  description = "Map of id values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "msk_clusters_arn" {
  description = "Map of arn values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "msk_clusters_bootstrap_brokers" {
  description = "Map of bootstrap_brokers values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers if v.bootstrap_brokers != null && length(v.bootstrap_brokers) > 0 }
}
output "msk_clusters_bootstrap_brokers_ipv6" {
  description = "Map of bootstrap_brokers_ipv6 values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_ipv6 if v.bootstrap_brokers_ipv6 != null && length(v.bootstrap_brokers_ipv6) > 0 }
}
output "msk_clusters_bootstrap_brokers_public_sasl_iam" {
  description = "Map of bootstrap_brokers_public_sasl_iam values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_public_sasl_iam if v.bootstrap_brokers_public_sasl_iam != null && length(v.bootstrap_brokers_public_sasl_iam) > 0 }
}
output "msk_clusters_bootstrap_brokers_public_sasl_scram" {
  description = "Map of bootstrap_brokers_public_sasl_scram values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_public_sasl_scram if v.bootstrap_brokers_public_sasl_scram != null && length(v.bootstrap_brokers_public_sasl_scram) > 0 }
}
output "msk_clusters_bootstrap_brokers_public_tls" {
  description = "Map of bootstrap_brokers_public_tls values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_public_tls if v.bootstrap_brokers_public_tls != null && length(v.bootstrap_brokers_public_tls) > 0 }
}
output "msk_clusters_bootstrap_brokers_sasl_iam" {
  description = "Map of bootstrap_brokers_sasl_iam values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_sasl_iam if v.bootstrap_brokers_sasl_iam != null && length(v.bootstrap_brokers_sasl_iam) > 0 }
}
output "msk_clusters_bootstrap_brokers_sasl_iam_ipv6" {
  description = "Map of bootstrap_brokers_sasl_iam_ipv6 values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_sasl_iam_ipv6 if v.bootstrap_brokers_sasl_iam_ipv6 != null && length(v.bootstrap_brokers_sasl_iam_ipv6) > 0 }
}
output "msk_clusters_bootstrap_brokers_sasl_scram" {
  description = "Map of bootstrap_brokers_sasl_scram values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_sasl_scram if v.bootstrap_brokers_sasl_scram != null && length(v.bootstrap_brokers_sasl_scram) > 0 }
}
output "msk_clusters_bootstrap_brokers_sasl_scram_ipv6" {
  description = "Map of bootstrap_brokers_sasl_scram_ipv6 values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_sasl_scram_ipv6 if v.bootstrap_brokers_sasl_scram_ipv6 != null && length(v.bootstrap_brokers_sasl_scram_ipv6) > 0 }
}
output "msk_clusters_bootstrap_brokers_tls" {
  description = "Map of bootstrap_brokers_tls values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_tls if v.bootstrap_brokers_tls != null && length(v.bootstrap_brokers_tls) > 0 }
}
output "msk_clusters_bootstrap_brokers_tls_ipv6" {
  description = "Map of bootstrap_brokers_tls_ipv6 values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_tls_ipv6 if v.bootstrap_brokers_tls_ipv6 != null && length(v.bootstrap_brokers_tls_ipv6) > 0 }
}
output "msk_clusters_bootstrap_brokers_vpc_connectivity_sasl_iam" {
  description = "Map of bootstrap_brokers_vpc_connectivity_sasl_iam values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_vpc_connectivity_sasl_iam if v.bootstrap_brokers_vpc_connectivity_sasl_iam != null && length(v.bootstrap_brokers_vpc_connectivity_sasl_iam) > 0 }
}
output "msk_clusters_bootstrap_brokers_vpc_connectivity_sasl_scram" {
  description = "Map of bootstrap_brokers_vpc_connectivity_sasl_scram values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_vpc_connectivity_sasl_scram if v.bootstrap_brokers_vpc_connectivity_sasl_scram != null && length(v.bootstrap_brokers_vpc_connectivity_sasl_scram) > 0 }
}
output "msk_clusters_bootstrap_brokers_vpc_connectivity_tls" {
  description = "Map of bootstrap_brokers_vpc_connectivity_tls values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.bootstrap_brokers_vpc_connectivity_tls if v.bootstrap_brokers_vpc_connectivity_tls != null && length(v.bootstrap_brokers_vpc_connectivity_tls) > 0 }
}
output "msk_clusters_broker_node_group_info" {
  description = "Map of broker_node_group_info values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.broker_node_group_info) if v.broker_node_group_info != null && length(v.broker_node_group_info) > 0 }
}
output "msk_clusters_client_authentication" {
  description = "Map of client_authentication values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.client_authentication) if v.client_authentication != null && length(v.client_authentication) > 0 }
}
output "msk_clusters_cluster_name" {
  description = "Map of cluster_name values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "msk_clusters_cluster_uuid" {
  description = "Map of cluster_uuid values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.cluster_uuid if v.cluster_uuid != null && length(v.cluster_uuid) > 0 }
}
output "msk_clusters_configuration_info" {
  description = "Map of configuration_info values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.configuration_info) if v.configuration_info != null && length(v.configuration_info) > 0 }
}
output "msk_clusters_current_version" {
  description = "Map of current_version values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.current_version if v.current_version != null && length(v.current_version) > 0 }
}
output "msk_clusters_customer_action_status" {
  description = "Map of customer_action_status values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.customer_action_status if v.customer_action_status != null && length(v.customer_action_status) > 0 }
}
output "msk_clusters_encryption_info" {
  description = "Map of encryption_info values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.encryption_info) if v.encryption_info != null && length(v.encryption_info) > 0 }
}
output "msk_clusters_enhanced_monitoring" {
  description = "Map of enhanced_monitoring values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.enhanced_monitoring if v.enhanced_monitoring != null && length(v.enhanced_monitoring) > 0 }
}
output "msk_clusters_kafka_version" {
  description = "Map of kafka_version values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.kafka_version if v.kafka_version != null && length(v.kafka_version) > 0 }
}
output "msk_clusters_logging_info" {
  description = "Map of logging_info values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.logging_info) if v.logging_info != null && length(v.logging_info) > 0 }
}
output "msk_clusters_number_of_broker_nodes" {
  description = "Map of number_of_broker_nodes values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.number_of_broker_nodes if v.number_of_broker_nodes != null }
}
output "msk_clusters_open_monitoring" {
  description = "Map of open_monitoring values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.open_monitoring) if v.open_monitoring != null && length(v.open_monitoring) > 0 }
}
output "msk_clusters_rebalancing" {
  description = "Map of rebalancing values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => one(v.rebalancing) if v.rebalancing != null && length(v.rebalancing) > 0 }
}
output "msk_clusters_region" {
  description = "Map of region values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "msk_clusters_storage_mode" {
  description = "Map of storage_mode values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.storage_mode if v.storage_mode != null && length(v.storage_mode) > 0 }
}
output "msk_clusters_tags" {
  description = "Map of tags values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "msk_clusters_tags_all" {
  description = "Map of tags_all values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "msk_clusters_zookeeper_connect_string" {
  description = "Map of zookeeper_connect_string values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.zookeeper_connect_string if v.zookeeper_connect_string != null && length(v.zookeeper_connect_string) > 0 }
}
output "msk_clusters_zookeeper_connect_string_tls" {
  description = "Map of zookeeper_connect_string_tls values across all msk_clusters, keyed the same as var.msk_clusters"
  value       = { for k, v in aws_msk_cluster.msk_clusters : k => v.zookeeper_connect_string_tls if v.zookeeper_connect_string_tls != null && length(v.zookeeper_connect_string_tls) > 0 }
}


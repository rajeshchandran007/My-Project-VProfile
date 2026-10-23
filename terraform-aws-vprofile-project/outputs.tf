output "rds_endpoint" {
   value = aws_db_instance.vprofile-rds.endpoint
 }

 output "elasticache_endpoint" {
   value = aws_elasticache_cluster.vprofile-cache.configuration_endpoint
 }

 output "rabbitmq_endpoint" {
   value = aws_mq_broker.vprofile-rmq.instances[0].endpoints[0]
   description = "The endpoint of the first RabbitMQ instance. Ensure at least one instance exists."
 }


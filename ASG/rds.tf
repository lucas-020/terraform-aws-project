resource "aws_rds_cluster" "example" {
  count               = 4
  cluster_identifier  = "cluster"
  engine              = "aurora"
  engine_mode         = "provisioned"
  master_username     = "admin"
  master_password     = "password123"
  backup_retention_period = 7
  db_subnet_group_name = "aws_db_subnet_group.example.name"
  vpc_security_group_ids = ["aws_security_group.example.id"]
  tags = {
    Name = "example-cluster"
  }
}

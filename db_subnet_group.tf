###############################################################
## DB Subnet Group creation
###############################################################

resource "aws_db_subnet_group" "db_sub_group" {
  name       = "main"
  subnet_ids = data.aws_subnet.available_db_subnet
  tags = {
    Name = "My DB subnet group"
  }
}

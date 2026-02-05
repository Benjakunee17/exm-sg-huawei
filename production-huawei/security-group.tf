# 1
# CCE-Mercury-Prod-Node-SG

resource "huaweicloud_networking_secgroup" "cce_mercury_prod_node_sg" {
  name        = "CCE-Mercury-Prod-Node-SG"
  description = "Security Group for CCE Mercury Production Node"
}

# Inbound Rule
resource "huaweicloud_networking_secgroup_rule" "inbound_tcp_all_from_specific_ip" {
  security_group_id = huaweicloud_networking_secgroup.cce_mercury_prod_node_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min   = 1
  port_range_max   = 65535
  remote_ip_prefix = "10.102.48.34/32"
}

# Outbound Rule



/**************************************************************************************************************/


# 2
# DMS-PROD-RabbitMQ-SG

resource "huaweicloud_networking_secgroup" "dms_prod_rabbitmg_sg" {
  name        = "DMS-PROD-RabbitMQ-SG"
  description = "DMS-PROD-RabbitMQ-SG"
}

# Inbound Rule
# 5672
resource "huaweicloud_networking_secgroup_rule" "inbound_tcp_5672" {
  security_group_id = huaweicloud_networking_secgroup.dms_prod_rabbitmg_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 5672
  port_range_max    = 5672
  remote_ip_prefix = "172.28.15.0/25"
}

# 5671
resource "huaweicloud_networking_secgroup_rule" "inbound_tcp_5671" {
  security_group_id = huaweicloud_networking_secgroup.dms_prod_rabbitmg_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 5671
  port_range_max    = 5671
  remote_ip_prefix = "172.28.15.0/25"
}

# 15671
resource "huaweicloud_networking_secgroup_rule" "inbound_tcp_15671" {
  security_group_id = huaweicloud_networking_secgroup.dms_prod_rabbitmg_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 15671
  port_range_max    = 15671
  remote_ip_prefix = "172.28.15.0/25"
}



/**************************************************************************************************************/

# DCS-PROD-Redis-SG
resource "huaweicloud_networking_secgroup" "dcs_prod_redis_sg" {
  name        = "DCS-PROD-Redis-SG"
  description = "DCS-PROD-Redis-SG"
}

# Inbound Rule

resource "huaweicloud_networking_secgroup_rule" "inbound_dcs_prod_redis" {
  security_group_id = huaweicloud_networking_secgroup.dcs_prod_redis_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 6379
  port_range_max    = 6379
  remote_ip_prefix = "172.28.15.0/25"
}


/**************************************************************************************************************/



# SFS-PROD-SG
resource "huaweicloud_networking_secgroup" "sfs_prod_sg" {
  name        = "SFS-PROD-SG"
  description = "SFS-PROD-SG"
}

# Inbound Rule
# 2049
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_2049" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 2049
  port_range_max    = 2049
  remote_ip_prefix = "172.28.15.0/25"
}

# 445
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_445" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 445
  port_range_max    = 445
  remote_ip_prefix = "172.28.15.0/25"
}


# 111
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_111" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 111
  port_range_max    = 111
  remote_ip_prefix = "172.28.15.0/25"
}


# 2051
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_2051" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 2051
  port_range_max    = 2051
  remote_ip_prefix = "172.28.15.0/25"
}


# 20048
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_20048" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 20048
  port_range_max    = 20048
  remote_ip_prefix = "172.28.15.0/25"
}


# 2052
resource "huaweicloud_networking_secgroup_rule" "inbound_sfs_prod_2052" {
  security_group_id = huaweicloud_networking_secgroup.sfs_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 2052
  port_range_max    = 2052
  remote_ip_prefix = "172.28.15.0/25"
}


/****************************************************************************************************************/




/**************************************************************************************************************/



# RDS-PROD-SG

resource "huaweicloud_networking_secgroup" "rds_prod_sg" {
  name        = "RDS-PROD-SG"
  description = "RDS-PROD-SG"
}

# Inbound Rule
# 5432
resource "huaweicloud_networking_secgroup_rule" "inbound_tcp" {
  security_group_id = huaweicloud_networking_secgroup.rds_prod_sg.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"

  port_range_min    = 5432
  port_range_max    = 5432
  remote_ip_prefix = "172.28.15.0/25"
}


/**************************************************************************************************************/


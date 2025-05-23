terraform {
  required_providers {
    ciphertrust = {
      source = "ThalesGroup/CipherTrust"
      version = "1.0.0-pre3"
    }
  }
}

provider "ciphertrust" {
	address = "https://10.10.10.10"
	username = "admin"
	password = "ChangeMe101!"
}

resource "ciphertrust_scp_connection" "scp_connection" {
  name = "scp-test-connection"
  products = [
    "backup/restore"
  ]
  description = "a description of the connection"
  host = "10.10.10.10"
  port = 22
  username = "user"
  auth_method = "Password"
  password = "password"
  path_to = "/home/path/to/directory/"
  protocol = "sftp"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNxnOBfBVU4L3fQBVWK71CdoHXmFNxkD0lFYDagM8etytGxRMQeOSeARUYQA+xC/8ig+LHimQ97L0XPSCvTr/XbXxOYBOdGHFqr1o6QwmSBABoPz0fvfCHaipAdwGlfS50aDbCWYZSd9UX6stOazCPdQ9wiiGD0+wYmagxBtrBlzrXiXKV3q+GNr6iIlejsv2aK"
  labels = {
    "environment" = "devenv"
  }
  meta = {
    "custom_meta_key1" = "custom_value1"
    "customer_meta_key2" = "custom_value2"
  }
}

output "scp_connection_id" {
  value = ciphertrust_scp_connection.scp_connection.id
}

output "scp_connection_name" {
  value = ciphertrust_scp_connection.scp_connection.name
}
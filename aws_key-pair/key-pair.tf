# Create Key Pair
resource "aws_key_pair" "key-pair" {
  key_name   = "${var.key-pair}"
  public_key = tls_private_key.rsa.public_key_openssh
}

# Choose RSA algorithm for the private key 
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create private key
resource "local_file" "key-pair-pem-file" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "${var.pem-file}"

  # Change pem file permissions to read/only
  provisioner "local-exec" {
    command = "chmod 0400 ${var.pem-file}"
  }
}


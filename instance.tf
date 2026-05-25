
# AWS EC2 Instance creation
# App node 1
resource "aws_instance" "app-instance-1" {
    ami               = "${var.ami-medium}"
    instance_type     = "${var.instance-type-medium}"

    # Attach Instance to Private Subnet 1
    subnet_id = aws_subnet.public-subnet-1.id

    # Security group
    vpc_security_group_ids = ["${aws_security_group.http-security-group.id}", "${aws_security_group.ssh-security-group.id}"]

    key_name          = "${var.key-pair}"

    root_block_device {
        volume_size = 30 
        volume_type = "gp2"
        encrypted   = false
    }

    tags = { 
        "Name" = "${var.ec2-instance-name}" 
    }
}

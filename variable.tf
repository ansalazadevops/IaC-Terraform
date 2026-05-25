# Project variables
variable "environment" {
  default = "Development"
  type = string
}

variable "owner" {
  default = "Antonio Salazar"
  type = string
}

variable "project" {
  default = "cd-project"
  type = string
}


variable "region" {
  default     = "us-east-1"
  description = "VPC default Region"
  type        = string
}

# Network Variables
variable "availability-zone-1" {
    default     = "us-east-1e"
    description = "Availability Zone 1"
    type        = string 
}


variable "vpc-cidr" {
    default     = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type        = string 
}

variable "public-subnet-1-cidr" {
    default     = "10.0.0.0/25"
    description = "Public Subnet 1 CIDR Block"
    type        = string 
}

# EC2 Instance variables
variable "ami-micro" {
  default     = "ami-052efd3df9dad4825" # jammy-22.04-amd64-server-20220609
  description = "AWS Ubuntu 22.04 Image"
  type        = string
}

variable "ami-medium" {
  default     = "ami-00874d747dde814fa" # jammy-22.04-amd64-server-20220609
  description = "AWS Ubuntu 22.04 Image"
  type        = string
}

variable "instance-type-micro" {
  default     = "t2.micro"
  description = "AWS T2 Micro EC2 Instance"
  type        = string
}

variable "instance-type-medium" {
  default     = "t2.medium"
  description = "AWS T2 Medium EC2 Instance"
  type        = string
}

variable "ec2-instance-name" {
  default     = "cdp-jenkins-ec2-instance-1"
  description = "AWS EC2 Instance Name"
  type        = string
}


# SSH variables
variable "ssh-location" {
    default     = "0.0.0.0/0"
    description = "IP Address Tha Can SSH Into the EC2 Instance"
    type        = string 
}

variable "key-pair" {
  default     = "asg-kp"
  description = "ssh key pair name"
  type        = string
}

variable "pem-file" {
  default     = "asg-kp.pem"
  description = "pem filename"
  type        = string
}

# EC2 user
variable "host-username" {
  default     = "ubuntu"
  description = "AWS EC2 host username"
  type        = string
}

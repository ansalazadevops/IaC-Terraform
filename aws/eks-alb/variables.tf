# -------------------------------------
# Project variables
# -------------------------------------
variable "environment" {
  default = "Development"
  type = string
}

variable "owner" {
  default = "Antonio Salazar"
  type = string
}

variable "project" {
  default = "eks-project"
  type = string
}

variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  default     = "eks-cluster"
  description = "EKS Cluster Name"
  type        = string
}

# -------------------------------------
# Networking Variables
# -------------------------------------
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
    description = "VPC CIDR Block"
  type          = string
}

variable "availability-zone-1" {
    default     = "us-east-1a"
    description = "Availability Zone 1"
    type        = string 
}

variable "availability-zone-2" {
    default     = "us-east-1b"
    description = "Availability Zone 2"
    type        = string 
}

variable "public-subnet-1-cidr" {
    default     = "10.0.1.0/24"
    description = "Public Subnet 1 CIDR Block"
    type        = string 
}

variable "public-subnet-2-cidr" {
    default     = "10.0.2.0/24"
    description = "Public Subnet 2 CIDR Block"
    type        = string 
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}


# -------------------------------------
# Networking Outputs
# -------------------------------------
# VPC
#output "aws_vpc" {
#  value = aws_vpc.eks_vpc.id
#}
#
## Subnets
#output "aws_subnet_ids" {
#  value = [
#    aws_subnet.public_az1.id,
#    aws_subnet.public_az2.id
#  ]
#}
#
## IGW
#output "aws_internet_gateway" {
#  value = aws_internet_gateway.igw.id
#}
#
## Route table
#output "aws_route_table" {
#  value = aws_route_table.public_rt.id
#}
#
## Route table association
#output "aws_route_table_associations" {
#  value = [
#    aws_route_table_association.rt_association_az1.id,
#    aws_route_table_association.rt_association_az2.id
#  ]
#}
#
## -------------------------------------
## IAM Roles Outputs
## -------------------------------------
#output "aws_iam_roles" {
#  value = [
#    aws_iam_role.eks_cluster_role.name,
#    aws_iam_role.eks_node_role.name
#  ]
#}
#
## -------------------------------------
## EKS Control Plane Outputs
## -------------------------------------
#output "eks_cluster_info" {
#  value = [
#    aws_eks_cluster.eks_cluster.name,
#    aws_eks_cluster.eks_cluster.endpoint
#  ]
#}

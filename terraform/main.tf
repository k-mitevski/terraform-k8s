data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}
data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}
data "aws_vpc" "default" {
  default = true
}
data "aws_subnet" "subnets" {
  vpc_id = data.aws_vpc.default.id
}
provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}
module "my-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "learnk8s-cluster"
  cluster_version = "1.17"
  subnets         = ["subnet-1", "subnet-2", "subnet-3"]
  vpc_id          = data.aws_vpc.default.id
  worker_groups = [
    {
      instance_type = "t2.micro"
      asg_desired_capacity  = 3
      asg_min_size  = 3
      asg_max_size  = 5
    }
  ]
}
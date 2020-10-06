module "dev_cluster" {
  source        = "./cluster"
  cluster_name  = "dev"
  instance_type = "t2.micro"
}

module "staging_cluster" {
  source        = "./cluster"
  cluster_name  = "staging"
  instance_type = "t2.micro"
}

module "production_cluster" {
  source        = "./cluster"
  cluster_name  = "production"
  instance_type = "m5.large"
}
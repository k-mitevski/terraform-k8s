module "dev_cluster" {
  source = "./cluster"

  cluster_name = "dev"
}

module "staging_cluster" {
  source = "./cluster"

  cluster_name = "staging"
}

module "production_cluster" {
  source = "./cluster"

  cluster_name = "production"
}

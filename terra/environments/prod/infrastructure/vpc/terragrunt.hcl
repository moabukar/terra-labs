include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  cidr_block = "10.1.0.0/16"
  vpc_name   = "prod-vpc"
}

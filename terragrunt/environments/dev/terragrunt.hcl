include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  cidr_block = "10.0.0.0/16"
  vpc_name   = "dev-vpc"
}

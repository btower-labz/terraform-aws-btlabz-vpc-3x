module "vpc_stage" {
  # source = "github.com/btower-labz/terraform-aws-btlabz-vpc-ha-3x"
  source = "btower-labz/btlabz-vpc-ha-3x/aws"
  version = "0.0.4"

  vpc_name = "stage-vpc"

  vpc_cidr       = "172.18.0.0/16"
  public_a_cidr  = "172.18.1.0/24"
  public_b_cidr  = "172.18.2.0/24"
  public_c_cidr  = "172.18.3.0/24"
  private_a_cidr = "172.18.11.0/24"
  private_b_cidr = "172.18.12.0/24"
  private_c_cidr = "172.18.13.0/24"

  tags = {
    Environment = "Staging"
    Customer    = "ACME"
  }
}

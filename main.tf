# 1. Accept value from root terraform.tfvars
variable "instance_type" {
  type = string
}

# 2. Feed it into the child module block
module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type # ◄ Passes the root variable into the child module slot
}
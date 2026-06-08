resource "aws_instance" "this" {
  ami                     = "ami-06422669907866d20"
  instance_type           = var.instance_type
}

resource "aws_instance" "import" {
  ami                     = "ami-06422669907866d20"
  instance_type           = var.instance_type
}
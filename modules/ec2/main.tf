resource "aws_instance" "sample" {
  ami           = "ami-07ff62358b87c7116"
 /* instance_type = "t2.micro" */
instance_type = var.instance_type
  tags = {
    Name = "InstanceFromTerraform"
  }
}

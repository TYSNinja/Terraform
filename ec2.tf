resource "aws_instance" "my-ec2" {
  ami = "ami-0ca9fb66e076a6e32"
  iam_instance_profile = "EC2SSMRole"  
instance_type = "t2.micro"
  count = 64


  tags = {
    Name = "my-ec2-machines"

  
  }
}

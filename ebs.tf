provider "aws" {
  region = "REGION"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_ebs_volume" "A" {
  availability_zone = "eu-west-2b"
  size = 10
  encrypted = false
  tags = {
    Name = "Raj"
  }
}

output "aws_ebs_volume" {
  value = aws_ebs_volume.A.id  
}

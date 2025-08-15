variable "aws_region" {
  description = "AWS bölgesi"
  default     = "eu-central-1"
}

variable "instance_count" {
  description = "Çalıştırılacak makina sayısı"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "EC2 instance tipi"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Kullanılacak AMI ID"
  default     = "ami-0c55b159cbfafe1f0"
}
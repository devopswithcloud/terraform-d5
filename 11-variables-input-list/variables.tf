variable "instance_count" {
  type = number
  default = 1
}

variable "ami_id" {
  description = "Enter the ami id used for ec2 machine"
  type = string
  default = "ami-012967cc5a8c9f891"
}

variable "availability_zone" {
  description = "In which AZ it should be created"
  type = string
  default = "us-east-1b"
}



# variable "instance_type" {
#  type = list(string)
#  default =["t2.micro", "t3.micro", "t2.small"]
# }

variable "instance_type" {
  description = "Instance type used to create ec2 instance"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "prod" = "t2.small"
    "test"  = "t2.medium"
  }
}
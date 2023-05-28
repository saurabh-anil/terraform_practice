variable "ami" {
  default = "ami-0557a15b87f6559cf"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "subnet_id" {
  default = "subnet-07d8416ea7a688016"
}
variable "tags" {
  default = {
    Name = "Ubuntu"
  }
}
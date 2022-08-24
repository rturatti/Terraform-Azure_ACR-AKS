variable "tags" {
  type = map(string)
  default = {
    Terraform = "True"
  }
}

variable "projeto" {
  type    = string
  default = "projlab"
}
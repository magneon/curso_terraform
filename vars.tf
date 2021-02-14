variable "amis" {
    type = map
    default = {
        "ubuntu-server-sa-east-1" = "ami-0e765cee959bcbfce"
        "redhat-enterprise-us-east-1" = "ami-096fda3c22c1c990a"
    }
}

variable "allowable_ips" {
    type = list
    default = ["45.164.232.102/32", "46.164.232.102/32"]
}

variable "instance_type_name" {
    default = "t2.micro"
}

variable "public_key_name" {
    default = "mesquitalabs"  
}

variable "machine_prefix" {
    default = "msklabs"
}
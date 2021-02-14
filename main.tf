terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.28.0"
    }
  }
}

provider "aws" {
    region                  = "sa-east-1"
    access_key              = "put your access_key here"
    secret_key              = "put your access_secret here"
}

provider "aws" {
    alias                   = "us-east-1"
    region                  = "us-east-1"
    access_key              = "put your access_key here"
    secret_key              = "put your access_secret here"
}

resource "aws_instance" "dev" {
    count                   = 3
    ami                     = var.amis["ubuntu-server-sa-east-1"]
    instance_type           = var.instance_type_name
    key_name                = var.public_key_name
    tags = {
      "Name"                = "${var.machine_prefix}-${count.index+1}"
    }
    vpc_security_group_ids = [aws_security_group.allow_ssh-se-1.id]
}

/* Resource not in use anymore */
/*
resource "aws_instance" "dev4" {
    ami                     = var.amis["ubuntu-server-sa-east-1"]
    instance_type           = var.instance_type_name
    key_name                = var.public_key_name
    tags = {
      "Name"                = "${var.machine_prefix}-4"
    }
    vpc_security_group_ids  = [aws_security_group.allow_ssh-se-1.id]
    depends_on              = [aws_s3_bucket.s3-bucket-dev4]
}
*/

resource "aws_instance" "dev5" {
    ami                     = var.amis["ubuntu-server-sa-east-1"]
    instance_type           = var.instance_type_name
    key_name                = var.public_key_name
    tags = {
      "Name"                = "${var.machine_prefix}-5"
    }
    vpc_security_group_ids  = [aws_security_group.allow_ssh-se-1.id]
}

/* Resource not in use anymore */
/*
resource "aws_instance" "dev6" {
    provider                = aws.us-east-1
    ami                     = var.amis["redhat-enterprise-us-east-1"]
    instance_type           = var.instance_type_name
    key_name                = var.public_key_name
    tags = {
      "Name"                = "${var.machine_prefix}-6"
    }
    vpc_security_group_ids  = [aws_security_group.allow_ssh-ue-1.id]
    depends_on = [aws_dynamodb_table.dynamodb-dev6]
}
*/

resource "aws_instance" "dev7" {
    provider                = aws.us-east-1
    ami                     = var.amis["redhat-enterprise-us-east-1"]
    instance_type           = var.instance_type_name
    key_name                = var.public_key_name
    tags = {
      "Name"                = "${var.machine_prefix}-7"
    }
    vpc_security_group_ids  = [aws_security_group.allow_ssh-ue-1.id]
}

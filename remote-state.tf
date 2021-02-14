terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mesquitalabs"

    workspaces {
      name = "mesquitalabs-aws"
    }
  }
}
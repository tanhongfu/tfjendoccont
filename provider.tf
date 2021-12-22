provider "aws" {
  region  = "ap-southeast-1"
  profile = "terraform"

  default_tags {
    tags = {
      market      = "market_id"
      product     = "product_id"
      application = "app_id"
      environment = "dev"
    }
  }
}

//terraform {
//required_providers {
//aws = {
//source  = "hashicorp/aws"
//version = "~> XXX"
// }
// }
//}
#
# Provider Configuration
#

provider "aws" {
  region  = "us-east-1"
  version = ">= 2.38.0"
  AWS_ACCESS_KEY_ID = "AKIA6KIIRCZOAX4B5V7V"
  AWS_SECRET_ACCESS_KEY = "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"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}

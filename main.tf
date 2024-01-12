terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# The items commented aren't needed when using Jenkins bc we passed the vars in the jenkins file.
provider "aws" {
    region                   = ""
}
#  shared_credentials_files = ["~/.aws/credentials"]
#  profile                  = "vscode"


terraform {
  backend "s3" {
   bucket = "staticsite-tfstate"
   key    = "staticsite-state" #name of the S3 object that will store the state file
   region = "us-east-1"
 }
}

terraform {
  
  backend "s3" {
    bucket = "terraform5454"
    key    = "terraform-state"
    region = "us-east-1"
    
  }
}
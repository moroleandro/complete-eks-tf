variable "cluster_name" {
  default = "k8s"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "k8s_version" {
    default = "1.18"
}

variable "nodes_instances_sizes" {
  default = [
    "t3.large"
  ]
}

variable "auto_scale_options" {
  default = {
    min     = 2
    max     = 10
    desired = 2
  }
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "PRIV_KEY_PATH" {
  default = "vprofilekey"
}

variable "PUB_KEY_PATH" {
  default = "vprofilekey.pub"
}

variable "USERNAME" {
  default = "ubuntu"
}

variable "MYIP" {
  default = "183.83.39.2/32"
}

variable "rmquser" {
  default = "rabbit"
}

variable "rmqpass" {
  default = "Gr33n@pple123456"
}

variable "dbuser" {
  default = "admin"
}

variable "dbpass" {
  default = "admin123"
}

variable "dbname" {
  default = "accounts"
}

variable "instance_count" {
  default = "1"
}

variable "mq_instance_count" {
  description = "Number of RabbitMQ instances. Must be at least 1."
  type        = number
  default     = 1
  validation {
    condition     = var.mq_instance_count >= 1
    error_message = "At least one RabbitMQ instance is required."
  }
 }

variable "VPC_NAME" {
  default = "vprofile-VPC"
}

variable "Zone1" {
  default = "ap-south-1a"
}

variable "Zone2" {
  default = "ap-south-1b"
}

variable "Zone3" {
  default = "ap-south-1c"
}

variable "VpcCIDR" {
  default = "172.21.0.0/16"
}


variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "172.21.6.0/24"
}

variable "PROJECT" {
  default = "vprofile"
}
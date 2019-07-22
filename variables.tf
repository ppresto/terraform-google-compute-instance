variable "region" {
  default = "us-west1"
}

variable "count" {
  default = 1
}

variable "name_prefix" {
  default = "ppresto"
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "user_data" {
  default = ""
}

variable "disk_type" {
  default = "pd-ssd"
}

variable "disk_size" {
  default = 10
}

variable "startup_script" {
  default = <<EOF
#! /bin/bash
apt-get update
apt-get install -y apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
</body></html>
EOF
}

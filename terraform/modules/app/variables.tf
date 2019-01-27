variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}

variable db_local_ip {
  description = "DB local ip address"
  default     = ["127.0.0.1"]
}

variable env {
  description = "Environment: prod, stage, etc"
  default     = "stage"
}

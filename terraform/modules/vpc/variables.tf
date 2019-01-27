variable source_ranges {
  description = "Allowed IP addresses"
  default     = ["0.0.0.0/0"]
}

variable env {
  description = "Environment: prod, stage, etc"
  default     = "stage"
}

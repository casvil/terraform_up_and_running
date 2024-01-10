variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "server_protocol" {
  description = "The protocol the server will use for HTTP requests"
  type        = string
  default     = "tcp"
}

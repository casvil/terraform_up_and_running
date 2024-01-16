variable "db_username" {
  description = "The username of the database"
  type        = string
  default     = "testtest" # Use export TF_VAR_db_username="(YOUR_DB_USERNAME)"
}

variable "db_password" {
  description = "The password of the database"
  type        = string
  default     = "testtest" # Use export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
}

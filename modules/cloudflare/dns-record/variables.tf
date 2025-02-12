variable "zone_id" {
  type      = string
  sensitive = true
}

variable "type" {
  type = string
}

variable "name" {
  type = string
}

variable "content" {
  type = string
}

variable "proxied" {
  type    = bool
  default = false
}

variable "priority" {
  type    = number
  default = null
}

variable "ttl" {
  type    = number
  default = 1
}

variable "comment" {
  type    = string
  default = null
}
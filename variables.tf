variable "zone_lookup" {
  description = <<EOT
Map of zone_lookup, attributes below
Optional:
    - filter
    - zone_id
EOT

  type = map(object({
    filter = optional(object({
      account = optional(object({
        id   = optional(string)
        name = optional(string)
      }))
      direction = optional(string)
      match     = optional(string)
      name      = optional(string)
      order     = optional(string)
      status    = optional(string)
      type      = optional(list(string))
    }))
    zone_id = optional(string)
  }))
}


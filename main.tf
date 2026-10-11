data "cloudflare_zone" "zone_lookup" {
  for_each = var.zone_lookup

  filter  = each.value.filter
  zone_id = each.value.zone_id
}


module "bridge_service_perimeter_1" {

  source = "./modules/bridge_perimeter"

  for_each = var.perimeters
  policy   = var.policy_id

  perimeter_name = each.value.perimeter_name
  description    = each.value.description

  resources = each.value.resources
}

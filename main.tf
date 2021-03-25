module "bridge_service_perimeter_1" {

  source  = "app.terraform.io/joelinthecloud/m-vpcsc-bridge/google"
  version = "1.0.0"

  for_each = var.perimeters
  policy   = var.policy_id

  perimeter_name = each.value.perimeter_name
  description    = each.value.description

  resources = each.value.resources
}

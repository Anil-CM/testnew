
locals {
  input_name = "Hello ${var.name}"
  output_age = "${var.name}'s Age is ${var.age}"
}


# resource "null_resource" "env_workspace" {
#   provisioner "local-exec" {
#     command = "echo Hello ${var.name}"
#     timeout = 20
#   }
# }

output "one" {
  value = "${local.input_name}"
}

output "two" {
  value = "${local.output_age}"
}

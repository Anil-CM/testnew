resource "null_resource" "env_workspace" {
  provisioner "local-exec" {
    command = "echo Hello ${var.name}"
  }
}

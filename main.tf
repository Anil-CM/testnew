resource "null_resource" "env_workspace" {
  provisioner "local-exec" {
    command = "echo $IC_ENV_TAGS > ${path.module}/tags.txt"
  }
}

data "local_file" "env_info" {
    filename = "${path.module}/tags.txt"
    depends_on = [null_resource.env_workspace]
}

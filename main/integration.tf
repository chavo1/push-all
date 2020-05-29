resource "random_id" "integration" {
  keepers = {}

  byte_length = 9
}

resource "null_resource" "integration" {
  provisioner "local-exec" {
    command = "echo ${random_id.integration.hex}"
  }
}

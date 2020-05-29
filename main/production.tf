resource "random_id" "production" {
  keepers = {}

  byte_length = 9
}

resource "null_resource" "production" {
  provisioner "local-exec" {
    command = "echo ${random_id.production.hex}"
  }
}

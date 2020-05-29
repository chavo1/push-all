resource "random_id" "test" {
  keepers = {}

  byte_length = 9
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo ${random_id.test.hex}"
  }
}

resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = "echo ${random_id.test.hex}"
  }
}
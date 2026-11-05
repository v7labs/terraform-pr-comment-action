resource "terraform_data" "kept" {
  input = "kept"
}

resource "terraform_data" "created" {
  input = "created"
}

removed {
  from = terraform_data.forgotten
  lifecycle {
    destroy = false
  }
}

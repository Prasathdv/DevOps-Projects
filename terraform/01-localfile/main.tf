resource "local_file" "sample_file" {
  content  = "This is Prasath. This text is written into a sample text file using local_file module in Terraform"
  filename = "sample_file.txt"
}

resource "local_sensitive_file" "sensitive_file" {
  content = "This content is sensitive"
  filename = "sensitive_file.txt"
}
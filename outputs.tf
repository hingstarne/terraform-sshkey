output "private_key" {
  value = "${template_file.id_rsa.rendered}"
}


output "public_key" {
  value = "${template_file.id_rsa_pub.rendered}"
}

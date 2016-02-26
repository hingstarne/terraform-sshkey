output "private_key" {
value = "${replace(template_file.id_rsa.rendered,"\n\n","")}"}


output "public_key" {
  value = "${replace(template_file.id_rsa_pub.rendered,"\n\n","")}"
}

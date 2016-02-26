resource "tls_private_key" "deploy" {
    algorithm = "ECDSA"
    ecdsa_curve = "P384"
}
resource "template_file" "id_rsa" {
    template = "${file("${path.module}/key.tpl")}"

    vars {
        key = "${tls_private_key.deploy.private_key_pem}"
    }
}

resource "template_file" "id_rsa_pub" {
    template = "${file("${path.module}/key.tpl")}"

    vars {
        key = "${tls_private_key.deploy.public_key_openssh}"
    }
}

output "private_key" {
  value = "${template_file.id_rsa.rendered}"
}


output "public_key" {
  value = "${template_file.id_rsa_pub.rendered}"
}

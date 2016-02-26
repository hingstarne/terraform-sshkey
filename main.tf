resource "tls_private_key" "deploy" {
    algorithm = "RSA"
    rsa_bits = "4096"
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


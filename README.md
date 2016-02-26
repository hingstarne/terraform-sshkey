terraform-sshkey
x
tf_aws_coreos_ami
=================

Terraform module for generating and returning ssh keys
## Input variables

  * algorithm   - defaults to ecdsa
  * ecdsa_curve - defaults to P384

## Outputs

  * private_key
  * public_key

## Example use

    module "sshkey" "deploykey"{
      source = "github.com/hingstarne/terraform-sshkey"
    }


## Note

This module is not safe. The private key is stored in the statefile.
So if you use it in production you have been warned

# LICENSE

Apache2 - See the included LICENSE file for more information.


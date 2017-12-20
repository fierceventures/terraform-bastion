# AWS Bastion Instance

This module can be used to deploy an AWS ec2 instance as a bastion server.

Module Input Variables
----------------------

- `env` - The environment name
- `vpc_id` - The id of the vpc
- `name` - The name of the bastion instance. Defaults to `bastion`
- `subnet_id` - The id of the public subnet
- `key_name` - The name of the key pair used to ssh
- `instance_type` - The instance type. Defaults to `t2.nano`
- `ami` - The ami image. Defaults to `ami-1a66887`

Usage 
-----

```hcl
module "bastion" {
  source = "github.com/fierceventures/terraform-bastion"
  vpc_id = "${module.vpc.id}"
  subnet_id = "${module.public_subnet.id}"
  key_name = "${aws_key_pair.key_pair.key_name}"
  env = "test"
  name = "bastion"
  instance_type = "t2.micro"
  ami = "ami-1a668878"
}
```

Outputs
-------
- `ip` - The public ip of the bastion instance

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)

![](https://github.com/mvahdatkhah/terraform-aws-provider/blob/main/.github/terraform_logo_light.svg)

# Terraform AWS Provider

#### The [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) enables [Terraform](https://www.terraform.io/) to manage [AWS](https://aws.amazon.com/) resources

### initialize

    terraform init

### preview terraform actions

    terraform plan

### apply configuration with variables

    terraform apply -var-file terraform-dev.tfvars

### destroy a single resource

    terraform destroy -target aws_vpc.myapp-vpc

### destroy everything fromtf files

    terraform destroy

### show resources and components from current state

    terraform state list

### show current state of a specific resource/data

    terraform state show aws_vpc.myapp-vpc

### set avail_zone as custom tf environment variable - before apply

    export TF_VAR_avail_zone="us-east-1a"

* [Contributing guide](https://hashicorp.github.io/terraform-provider-aws/)
* [Quarterly development roadmap](https://github.com/hashicorp/terraform-provider-aws/blob/main/ROADMAP.md)
* [FAQ](https://hashicorp.github.io/terraform-provider-aws/faq/)
* [Tutorials](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)
* [discuss.hashicorp.com](https://discuss.hashicorp.com/c/terraform-providers/tf-aws/33)
* [Google Groups](https://groups.google.com/g/terraform-tool)
* [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)


**Please note**: We take Terraform's security and our users' trust very seriously. If you believe you have found a security issue in the Terraform AWS Provider, please responsibly disclose it by contacting us at <security@hashicorp.com>.

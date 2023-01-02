# Reference 
https://developer.hashicorp.com/terraform/cli/commands/graph


Command: graph

The terraform graph command is used to generate a visual representation of either a configuration or execution plan. The output is in the DOT format, which can be used by GraphViz to generate charts.

Usage

Usage: terraform graph [options]

# Misc Tools
terraform graph | dot -Tsvg > graph.svg
terraform graph -type=plan | dot -Tpng -o graph.png
https://28mm.github.io/blast-radius-docs/examples/terraform-provider-aws/networking/
https://28mm.github.io/blast-radius-docs/examples/terraform-provider-azurem/vm-custom-image-new-storage-account/
open https://hieven.github.io/terraform-visual/
terraform plan -out=plan.out
terraform show -json plan.out > plan.json

https://github.com/cycloidio/inframap.git
https://github.com/cycloidio/terracognita
https://github.com/cycloidio/inframap
https://github.com/cycloidio/terracost
https://prettyplan.chrislewisdev.com
https://github.com/coinbase/terraform-landscape
https://github.com/im2nguyen/rover

open https://github.com/cycloidio/inframap
inframap generate state.tfstate | dot -Tpng > graph.png
inframap generate state.tfstate | graph-easy
inframap generate config.tf | graph-easy
inframap generate ./my-module/ | graph-easy
# using docker image (assuming that your Terraform files are in the working directory)
docker run --rm -v ${PWD}:/opt cycloid/inframap generate /opt/terraform.tfstate


inframap generate ./terraform/module-magento/ | dot -Tpng > inframap.png
inframap generate ./terraform/module-magento/ --raw | dot -Tpng > inframapraw.png

backend	command
S3	aws s3 cp s3://bucket/path/to/your/file.tfstate - | inframap generate
GCS	gsutil cat gs://bucket/path/to/your/file.tfstate | inframap generate



Cycloid is a hybrid cloud DevOps collaboration platform providing end-to-end frameworks to accelerate and industrialize software delivery.

As of now, we have three open-source tools:

TerraCognita: Read from your existing cloud providers and generate IaC in Terraform
InfraMap: Reads .tfstate or HCL to generate a graph specific for each provider
TerraCost: Cloud cost estimation for Terraform in the CLI


# New Tools to Watch in 2023
https://medium.com/4th-coffee/10-new-devops-tools-to-watch-in-2023-e974dbb1f1bb
Plumi
SOPS
Trivy
Cluster API 
Linkerd
GitHub Actions
Tekton
Harness
Thanos
Sentinel
Doppler


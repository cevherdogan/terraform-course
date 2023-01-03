# learn TF github-actions

https://github.com/hashicorp/learn-terraform-github-actions

# learn Github PAGES
https://pages.github.com

# learn GHitHub Actions

# Reference 
https://developer.hashicorp.com/terraform/cli/commands/graph

AWS Architecture Icons
The official AWS icon set for building architecture diagrams https://aws.amazon.com/architecture/icons/


AWS Reference Architecture Diagrams
https://aws.amazon.com/architecture/reference-architecture-diagrams/?solutions-all.sort-by=item.additionalFields.sortDate&solutions-all.sort-order=desc&whitepapers-main.sort-by=item.additionalFields.sortDate&whitepapers-main.sort-order=desc&awsf.whitepapers-tech-category=*all&awsf.whitepapers-industries=*all

Exploring Terraform Graphs With D3.js Part 1
https://28mm.github.io/notes/d3-terraform-graphs



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


AWS Solutions Library
Landing Zone Accelerator on AWS

Deploy a cloud foundation to support highly-regulated workloads and complex compliance requirements
https://aws.amazon.com/solutions/implementations/landing-zone-accelerator-on-aws/?did=sl_card&trk=sl_card

https://aws.amazon.com/solutions/implementations/cloud-migration-factory-on-aws/?did=sl_card&trk=sl_card

AWS Solutions Library
Network Orchestration for AWS Transit Gateway
https://aws.amazon.com/solutions/implementations/network-orchestration-aws-transit-gateway/?did=sl_card&trk=sl_card

Application Monitoring with Amazon CloudWatch
https://aws.amazon.com/solutions/implementations/application-monitoring-with-cloudwatch/?did=sl_card&trk=sl_card



https://github.com/im2nguyen/rover


docker run --rm -it -p 9000:9000 -v $(pwd):/src im2nguyen/rover

docker run --rm -it -p 9000:9000 -v $(pwd):/src im2nguyen/rover -standalone true

printenv | grep "AWS" > .env

docker run --rm -it -p 9000:9000 -v $(pwd):/src --env-file ./.env im2nguyen/rover

docker run --rm -it -p 9000:9000 -v $(pwd):/src im2nguyen/rover -tfBackendConfig test.tfbackend -tfVarsFile test.tfvars -tfVar max_length=4

docker run --rm -it  -v $(pwd):/src im2nguyen/rover -genImage true

https://medium.com/@markwschaefer/20-entertaining-uses-of-chatgpt-you-never-knew-were-possible-3bc2644d4507

GET THIS!!!!!
https://metamark.medium.com/5-unique-passive-income-ideas-how-i-make-4-580-month-4a344d6b39d4


PRIIIFY

https://prettyplan.chrislewisdev.com

https://github.com/cycloidio/terracognita

https://github.com/cycloidio/terracost
https://github.com/cycloidio/terracognita
https://github.com/cevherdogan/inframap

https://hieven.github.io/terraform-visual/

https://github.com/hieven/terraform-visual


yarn global add @terraform-visual/cli
npm install -g @terraform-visual/cli
terraform-visual --plan plan.json

open terraform-visual-report/index.html

https://hub.docker.com/r/hieven/terraform-visual-cli

https://developer.hashicorp.com/terraform/cli/commands/graph

[1]: GitHub repository: terraform-diagrams.
https://github.com/ebarros29/terraform-diagrams
[2]: Terraform official website. Introduction to Terraform
https://www.terraform.io/intro/index.html
[3]: Diagrams: Diagram as Code. About Diagrams
https://diagrams.mingrammer.com/

https://diagrams.mingrammer.com

https://diagrams.mingrammer.com/docs/getting-started/examples

from diagrams import Diagram
from diagrams.aws.compute import EC2
from diagrams.aws.database import RDS
from diagrams.aws.network import ELB

with Diagram("Grouped Workers", show=False, direction="TB"):
    ELB("lb") >> [EC2("worker1"),
                  EC2("worker2"),
                  EC2("worker3"),
                  EC2("worker4"),
                  EC2("worker5")] >> RDS("events")

from diagrams import Cluster, Diagram
from diagrams.aws.compute import ECS
from diagrams.aws.database import ElastiCache, RDS
from diagrams.aws.network import ELB
from diagrams.aws.network import Route53

with Diagram("Clustered Web Services", show=False):
    dns = Route53("dns")
    lb = ELB("lb")

    with Cluster("Services"):
        svc_group = [ECS("web1"),
                     ECS("web2"),
                     ECS("web3")]

    with Cluster("DB Cluster"):
        db_primary = RDS("userdb")
        db_primary - [RDS("userdb ro")]

    memcached = ElastiCache("memcached")

    dns >> lb >> svc_group
    svc_group >> db_primary
    svc_group >> memcached

https://github.com/mingrammer/diagrams
Cloudiscovery helps you to analyze resources in your cloud (AWS/GCP/Azure/Alibaba/IBM) account. It allows you to create a diagram of analyzed cloud resource map based on this Diagrams library, so you can draw your existing cloud infrastructure with Cloudiscovery.

Airflow Diagrams is an Airflow plugin that aims to easily visualise your Airflow DAGs on service level from providers like AWS, GCP, Azure, etc. via diagrams.

m

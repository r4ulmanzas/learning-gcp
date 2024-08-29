# learning-gcp
Learning and playing with GCP

The projects in this repo use a `.tfvars` file to handle sensitive variable values. If you want to test in on your environment, please create a `.tfvars` value and supply the values for the variables in `variables.tf`.

### How to Run

Start the chosen terraform project:
```sh
terraform init
```

Create the infra:
```sh
terraform apply -var-file=<name_of_the_file>.tfvars
```

Destroy the infra:
```sh
terraform apply -var-file=<name_of_the_file>.tfvars
```

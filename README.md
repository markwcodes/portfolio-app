# Portfolio Site for [mark.wilson.codes](https://mark.wilson.codes)

## About this project

[mark.wilson.codes](https://mark.wilson.codes) was created to provide a professional online presence for myself and act as a showcase of skills. The name tells you who I am and what I do!

My goal with this portfolio project is to create a HA (high availability), scalable, Kubernetes cluster, with infrastructure and deployments managed by Terraform and Helm.\
There will be a strong focus on back-end development and dev-ops, with a few interactive demos displaying front-end/back-end coding skills.

For the web framework, I have chosen [Laravel Jetstream](https://jetstream.laravel.com) as it provides out-of-the-box user authentication, easy Vue prop hydration via Inertia.js, and back-end routing handled by Laravel.\
Laravel Jetstream also pushes you to encapsulate business logic in granular "actions" instead of bulky service classes, and I'd like to explore this code organisation paradigm a bit more.

Cost is a key consideration, and therefore I have chosen to use DigitalOcean as my cloud environment. A similar setup on AWS would be around 5x the cost of DO.

# Setup instructions

## Terraform initialisation

#### In the DigitalOcean web interface:

1. Create new project and grab DigitalOcean token
2. Replace the `do_token` Terraform value in `terraform.tfvars` with your token
3. Create new Space (with a unique name)
4. Replace the `bucket` Terraform value in `backend-config.tfvars` with your unique Space name
5. Create access credentials for the Space under API -> Space keys -> Generate new key
6. Replace `access_key` and `secret_key` in `backend-config.tfvars` with your access keypair
7. Initialise Terraform via backend-config.tfvars file:\
   `terraform init -backend-config=backend-config.tfvars`
8. Create new Terraform workspace:\
   `terraform workspace new production`
9. Check your Space storage to ensure the remote state file has been added

#### Alternative ENV based method (for CI/CD environments). Set these **private** environment variables:

Create these **private** environment variables:

-   `TF_VAR_spaces_access_token`
-   `TF_VAR_spaces_secret_key`
-   `TF_VAR_tf_state_bucket`

then run:

```
terraform init \
 -backend-config="access_key=$TF_VAR_spaces_access_token" \
 -backend-config="secret_key=$TF_VAR_spaces_secret_key" \
 -backend-config="bucket=$TF_VAR_tf_state_bucket"
```

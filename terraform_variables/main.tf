resource "local_file" "terraform-var" {
filename = var.filename
content = var.var_map.content1
}


output "terraform_env_var" {
value = var.terraform_env_var
}

output "terraform_var_ec2" {
value = var.var_ec2_object.instances
}


output "terraform_tfvars_json_file" {
value = var.no_of_students
}


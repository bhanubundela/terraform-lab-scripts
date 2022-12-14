variable filename {
default = "/home/ubuntu/terraform_variables/terraform-var-automated.txt"
}

variable content {
default = "Hello this is auto generated script"
}


variable terraform_env_var {}


variable "var_map" {
type = map
default = {

"content1" = "this is dry"
"content2" = "this is wet"
}
}


variable "var_ec2_object" {
type = object({
	name = string
	instances = number
	ami = string
	keys = list(string)
})
default = {
	name = "ec2"
        instances = 4
        ami = "ubuntu_1234"
        keys = ["key_1.pem","key_2.pem"]
}
}


variable "no_of_students" {}




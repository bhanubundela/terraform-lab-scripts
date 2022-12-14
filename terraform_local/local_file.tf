resource "local_file" "terraform"{
	filename = "/home/ubuntu/terraform/terraform_automated.txt"
	content = "I will become devops engineer"
}



resource "random_string" "rand-str" {
length = 16
special = true
override_special = "!@#$%&*()-_=+[]{}"
}

output "rand-str"{
value = random_string.rand-str[*].result
}


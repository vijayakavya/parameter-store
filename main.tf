resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].value
  value = var.parameters[count.index].type
}

variable "parameters" {
  default = [
    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
    {name= "prod.rds.master_username", value = "mysqlrdsadmin", type = "String"},
    {name= "prod.expense.frontend.backend_url", value = "http://backend-dev.kdevopsb26.online/", type = "String"},
    {name= "rds.prod.endpoint", value = "prod-mysql.cluster-cbvsbeoyxek4.us-east-1.rds.amazonaws.com", type = "String"},

    ## Dev env
    {name= "dev.expense.frontend.backend_url", value = "http://backend-dev.kdevopsb26.online/", type = "String"},

    ## Common env
    {name= "jenkins_password", value = "admin123", type = "String"}
  ]
}
# Terraform

what is infrastructure as a code ? IAAC 

You can create your infra in multiple ways ? 
using cloud gui
using cloud cli 
using sdk 
using IAAC tools

Various IAAC tools are

pulumi
terraform - Hashicorp 
For aws Cloudformation
for azure azure resource template
Biceps 

IAAC is called as infrastructure as a code 
your whole infrastructure of system engineering/cloud systems /network systems are captured in one script/code , and by running this
script you create a complete infrastructre from it.



various IAAC tools are 
terraform (is not restricted to particular cloud provider or restricted a cloud provider it has various reach upto all various cloud providers )
where as cloudformation (its restrited to only aws)
azure resource template is restricted to only azure 
pulumi and biceps(azure next answere to IAAC)


devops -
orchestration  - k8s 
containerization - docker
iaac - terraform , cloudformation , art 
configuration  - ansible , chef , puppet  
pipelines/deployment  - jenkins , azure devops  , github action , bamboo , gitlab cicd , argo cd 
bash script/python script /powershell script/ 




terraform - terraform script is written in .tf language.

its main blocks are  - 

provider 
resource 
variable
data
output
module
backend 



terraform lifecycles

terraform init - metadata is init and new changes are stored in this .tf / .terraform file 
terraform plan - its gives detailed blueprint or plausible output for the desired terraform file 
terraform apply  - creates or applies desired resource creation from reference of terraform file
terraform destroy - deletes/removes the created resource from the the terraform file 
terraform fmt  - gives proper syntax format to your terraform file














Provider block - gives terraform the information to create/ destory infra in a desired cloud that is mentioned in the provider block.

syntax 

blockname "cloudprovidername" {
   key: values
   
   
}


provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource block - with the help of this resource you can create resource in a desired/particular cloud provider
syntax 


blockname "<provider>_<resource_type/type>" "name" {
     keys: values 
	 arguements
}
name = can be anything but must be unique and follow industry standards.


what is variable block ?
a variable block is variable passing block which is used to pass variables i.e attribute values to resource blocks 
just to avoid any human errors that might occur during modifying / changing any attribute value directly from resource block.
variable block supports following datatypes 
string (for string based argument values) , float (for float based arguement values) , boolean (for bool based arg values) , int (for number based arg values )
map (for key and value based arguements) , list (for list based arguements), any (you can pass all the above mentioned datatypes using any )

data types in terraform - 
tuples 
set *
list *
map  *
dictionaries 

float *
int  * 
string  * 
boolean  *

variable syntax 

variable "your_variableblockuniquename" {
  type        =  "mention here the data type" 3 = number , true = boolean , "t2.micro"  = string 
  description = "mention the value you want to pass" 3 , true , t2.micro 
}
 
instance_type = var.your_variableblockuniquename 
"var" is default syntax for calling your varible block in your resource block's argument 

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}
 
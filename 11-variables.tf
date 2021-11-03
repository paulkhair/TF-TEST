variable "platform" {
  description = "Hosting Platfor Az -azure"
  type        = string
  default     = "az"

}
variable "object" {
  description = "Object tier information"
  type        = map(string)
  default = {
    "azure_resource_group"        = "rgp"
    "azure_firewall"              = "afw"
    "azure_application_gateway"   = "agw"
    "azure_app_service"           = "app"
    "azure_api_Mgmt"              = "api"
    "app_service_plan"            = "asp"
    "disk"                        = "DBM"
    "virtual_network_gateway"     = "egw"
    "event_hub"                   = "evt"
    "azure_application_insights " = "ins"
    "linux_vm"                    = "lvm"
    "network_security_group"      = "nsg"
    "azure_sql_ml"                = "smi"
    "storage_account"             = "sta"
    "key_vault"                   = "klt"
    "virtual_network"             = "vnt"
    "windows_vm"                  = "wvm"

  }
}

variable "environment" {
  description = "Hosting Platfor Az -azure & VC vmware"
  type        = string
  default     = "n"
}

variable "location" {
  description = "Azure environment location details"
  default     = "west europe"
  type        = string

}

variable "application" {
  description = "Application information"
  default     = "SOA"
  type        = string
}

variable "costcenter" {
  description = "Provide information of costcenter"
  default     = ""
  type        = string
}

variable "role" {
  default     = "APP"
  type        = string
  description = "Provide information of role of resource"
}

variable "env" {
  default     = "Dev"
  type        = string
  description = "Provide information of environment of resource"

}

variable "dev_virtual_network_address_space" {
  description = "Provide all address range of network"
  type = list(string) 
  default     = ["172.19.99.0/24", "172.19.100.0/24", "172.19.101.0/24","172.19.102.0/24"]
}




/*
o	AFW - Azure Firewall
o	AGW - Azure Application Gateway
o	APP - Azure App Service
o	API - API Management
o	ASG - Application Security Group
o	ASP - App Service Plan
o	AST - Availability Set (for virtual machines)
o	AVM - Appliance Virtual Machine
o	BOT - Web App Bot
o	CDP - CDN profile
o	CGN - Cognitive Services
o	DBM - Disk
o	EGW - Virtual Network Gateway
o	EXR - Express Route
o	EVT - Event Hub
o	INS - Azure Application Insights 
o	LVM - Linux (Red Hat) virtual machine
o	NSG - Network Security Group
o	PVA - Purview Account
o	RED - Azure Cache for Redis
o	SBN - Service Bus Namespace
o	SCH - Search Service
o	SQP - Synapse SQL Pool
o	SQS - Azure SQL Database
o	SWS - Synapse Workspace
o	EDB - Azure Elastic Pool SQL Server
o	SMI - Azure SQL Managed Instance
o	CDB - Azure Cosmos Database 
o	STA - Storage Account
o	UDR - Route Table
o	VGW - Virtual Gateway
o	VLT - Key vault
o	VNT - Virtual Network
o	WKS - Log Analytics workspace
o	WVM - Windows virtual machine
o	OVM- Oracle Database virtual Machine 
o	SVM- MSSQL Server database virtual Machine 
o	JVM- Oracle Weblogic Virtual Machine
o	MVM- Mysql Server database virtual Machine 
o	NVM- MongoDB database virtual Machine
o	IVM- Influx DB database virtual Machine


*/
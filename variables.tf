variable "platform" {
  description = "Hosting Platfor Az -azure"
  type = string
  default =  "az"
  
}
variable "Object" {
  description = "Object tier information"
  type = map (string) 
  default = {
    "Azure-firewall" = "afw"
    "Azure-Application-Gateway" = "agw"
    "Azure-app-service" = "app"
    "Azure-API-Mgmt" = "api"
    "App-Service-Plan" = "asp"
    "Disk" = "DBM"
    "Virtual-Network-gateway" = "egw"
    "Event-HUB" = "evt"
    "Azure-Application-Insights " = "ins"
    "Linux-VM" = "lvm"
    "network-security-group" = "nsg"
    "Azure-SQL-MI" = "smi"
    "storage-account" = "sta"
    "Key-vault" = "klt"
    "Virtual-Network" = "vnt"
    "Windows-VM" = "wvm"

  }
}

variable "Environment" {
  description = "Hosting Platfor Az -azure & VC vmware"
  type = map (string) 
  default = "n"
}

variable "location" {
  description = "Azure environment location details"
  default = "west europe"
  type = string

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
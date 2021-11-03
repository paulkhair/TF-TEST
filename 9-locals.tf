locals {
  Common_tags = {
    Environment = "${var.env}"
    costcenter  = "${var.costcenter}"
    Role        = "${var.role}"
    Application = "${var.application[0]}"
    
  }

}


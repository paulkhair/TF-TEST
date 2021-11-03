locals {
    Common_tags = {
        Environment = "${var.env}"
        costcenter = "${var.CostCenter}"
        Role = "${var.role}"
        Application ="${var.application}"

    }

}


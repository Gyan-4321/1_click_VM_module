module "rgtest" {
  source = "../Modules_resources/rg"
  rgname = var.rgname

}

module "nictest" {
  source     = "../Modules_resources/nic"
  nic90      = var.nic90
  pipdata    = var.pipdata
  subnetdata2 = var.subnetdata2
  depends_on = [module.rgtest, module.subnettest, module.pip]
}

module "nsgtest" {
  source = "../Modules_resources/nsg"
  nsg90  = var.nsg90

  depends_on = [module.rgtest]

}
module "pip" {
  source = "../Modules_resources/pip"
  pip90  = var.pip90


  depends_on = [module.rgtest]

}

module "subnettest" {
  source     = "../Modules_resources/subnet"
  subnet90   = var.subnet90
  depends_on = [module.vnettest]

}
module "vnettest" {
  source     = "../Modules_resources/vnet"
  vnet90     = var.vnet90
  depends_on = [module.rgtest]

}
module "vmtest" {
  source            = "../Modules_resources/VM"
  vm90              = var.vm90
  nicdata           = var.nicdata
  depends_on        = [module.rgtest, module.vnettest, module.nictest]
}


module "subnettonsgast" {
  source     = "../Modules_resources/nsgtosubnetassociation"
 vm_instances = var.vm_instances
}

#   depends_on = [module.subnettest, module.nsgtest]

# }

# resource "azurerm_subnet_network_security_group_association" "testing" {
#   subnet_id                 = module.subnettest.subnet_id
#   network_security_group_id = module.vmtest.id
# }

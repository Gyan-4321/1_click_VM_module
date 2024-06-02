rgname = {
  RG1 = {
    name     = "raju-RG"
    location = "central india"
  }
}


vnet90 = {
  vnet1 = {
    name                = "fortest-network"
    address_space       = ["10.0.0.0/16"]
    location            = "central india"
    resource_group_name = "raju-RG"
  }

}

subnet90 = {

  testsubnet = {
    name                 = "internal"
    resource_group_name  = "raju-RG"
    virtual_network_name = "fortest-network"
    address_prefixes     = ["10.0.2.0/24"]
  }

}

nic90 = {
  nictest = {
    name                = "fortest-nic"
    location            = "central india"
    resource_group_name = "raju-RG"

  }
}

vm90 = {
  vm1 = {
    name                = "myfirstvm"
    resource_group_name = "raju-RG"
    location            = "central india"

  }
}

nsg90 = {

  sg1 = {
    name                = "myfirstnsg"
    resource_group_name = "raju-RG"
    location            = "central india"

  }
}

pip90 = {
  pip1 = {
    name                = "public-ip1"
    resource_group_name = "raju-RG"
    location            = "central india"
  }
}


pipdata = {
  pipdata1 = {
    name                = "public-ip1"
    resource_group_name = "raju-RG"
  },
  pipdata2 = {
    name                = "public-ip2"
    resource_group_name = "raju-RG"
  }



}

nicdata = {
  nicdata1 = {
    name                = "fortest-nic"
    resource_group_name = "raju-RG"
  }

}

subnetdata2 = {
  name                 = "internal"
    virtual_network_name = "fortest-network"
    resource_group_name  = "raju-RG"

}

# Define a map of VM instances where each key corresponds to a unique VM instance
vm_instances = {
  instance1 = {
    virtual_network_name = "fortest-network"
    resource_group_name  = "raju-RG"
    network_security_group = "myfirstnsg"
  }
  instance2 = {
    virtual_network_name = "fortest-network2"
    resource_group_name  = "raju-RG"
    network_security_group = "myfirstnsg"
  }
  # Add more instances as needed
}


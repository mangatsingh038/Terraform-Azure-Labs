rgs={
    rg1={
        name="fateh_rg"
        location="south india"
    }
}
vnets={
    vnet1={
        name="network_zone"
        location="south india"
        resource_group_name="fateh_rg"
        address_space=["192.168.0.0/16"]
    }
}

sub-nets = {
    snet1={
        name="vm_subnet1"
        resource_group_name="fateh_rg"
        virtual_network_name="network_zone"
        address_prefixes=["192.168.1.0/24"]
    }
}
    pips={
    p1={
        name="pip1"
        location="south india"
        resource_group_name="fateh_rg"
        allocation_method="Static"
        sku="Standard"
    }
}
vms = {
    vm1={
        nic_name="vm1-nic"
        location="south india"
        rg_name="fateh_rg"
        vnet_name="network_zone"
        subnet_name="vm_subnet1"
        pip_name="pip1"
        vm_name="myvm"
        size="Standard_d4_v5"
        admin_username="fgs"
        admin_password="fateh@123456"
          }
}
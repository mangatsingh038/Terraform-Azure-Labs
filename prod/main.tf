module "resource-group" {
  source = "../module/resource-group"
  rgs=var.rgs
}
module "v-net" {
  source = "../module/v-net"
  vnets=var.vnets
  depends_on = [ module.resource-group ]
}
module "sub-net" {
    source = "../module/sub-net"
    sub-nets = var.sub-nets
    depends_on = [ module.v-net ]
  }
  module "public-ip" {
    source = "../module/public-ip"
    pips=var.pips
    depends_on = [ module.sub-net ]
  }
  module "NIC" {
    source = "../module/NIC"
   vms=var.vms 
   depends_on = [ module.public-ip ]
  }
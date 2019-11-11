variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.tenancy_ocid}"
}
variable "availability_domain" {
    default = "1"
}

variable "vcn_cidr" {
    default = "10.1.0.0/23"
}

variable "subnet_cidr" {
    default = "10.1.0.0/24"
}

variable "ssh_public_key" {}

variable "InstanceImageOCID" {
    default = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaakkqtoabcjigninsyalinvppokmgaza6amynam3gs2ldelpgesu6q"
}

variable "InstanceShape" {
    default = "BM.Standard.E2.64"
}

variable "InstanceName" {
    default = "amd01"
}
# Terraform-Azure-Labs
DevOps insider-monolithic-Lading-Zone

# Azure Infrastructure Automation with Terraform

## Overview

This repository contains a modular Terraform project for deploying Microsoft Azure infrastructure using Infrastructure as Code (IaC).

The project follows a **Root Module + Child Modules** architecture, where the root module orchestrates the deployment while reusable child modules create individual Azure resources.

The primary objective of this repository is to learn, practice, and implement Terraform best practices by building Azure infrastructure in a modular and scalable way.

---

## Project Architecture

```text
Root Module
│
├── Resource Group
├── Virtual Network
├── Subnet
├── Public IP
├── Network Interface
└── Linux Virtual Machine
```

---

## Current Infrastructure

The current version of this project deploys the following Azure resources:

* Resource Group
* Virtual Network (VNet)
* Subnet
* Public IP Address
* Network Interface (NIC)
* Linux Virtual Machine (Ubuntu)

All resources are deployed automatically from a single Terraform execution.

---

## Repository Structure

```text
.
├── root-module/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars.example
│   └── outputs.tf
│
├── modules/
│   ├── resource-group/
│   ├── virtual-network/
│   ├── subnet/
│   ├── public-ip/
│   ├── network-interface/
│   └── linux-vm/
│
├── .gitignore
└── README.md
```

---

## Terraform Concepts Implemented

* Infrastructure as Code (IaC)
* Modular Architecture
* Root Module
* Child Modules
* Variables
* Outputs
* Input Validation
* Explicit Dependencies (`depends_on`)
* Resource References
* AzureRM Provider
* Reusable Terraform Modules

---

## Technologies Used

* Terraform
* Microsoft Azure
* Azure Resource Manager (AzureRM Provider)
* Azure CLI
* Git
* GitHub

---

## Getting Started

Clone the repository

```bash

git clone https://github.com/mangatsingh038/Terraform-Azure-Labs.git
```

Initialize Terraform

```bash
terraform init
```

Validate the configuration

```bash
terraform validate
```

Review the execution plan

```bash
terraform plan
```

Deploy the infrastructure

```bash
terraform apply
```

---

## Future Enhancements

The following Azure services will be added as the project grows:

* Azure Bastion
* Network Security Group (NSG)
* Load Balancer
* Managed Disks
* Availability Set
* Virtual Network Peering
* Data Sources
* Remote Backend (Azure Storage)
* Terraform Outputs
* Terraform Workspaces

---

## Purpose

This repository is part of my hands-on journey to learn DevOps and Cloud Infrastructure using Terraform on Microsoft Azure.

The project is continuously updated as I learn new Azure services, Terraform features, and Infrastructure as Code best practices.

---

## Author

**Lakhwinder Singh**

Learning Azure • Terraform • DevOps • Infrastructure as Code

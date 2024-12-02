# Azure 5-Tier Architecture with Terraform

## Overview

This repository contains the Terraform configuration for deploying a **secure 5-tier architecture** on Microsoft Azure. The architecture supports a multi-tier web application with containerized services, secure communication between tiers, and robust user authentication using Active Directory.

### Architecture Components

1. **Active Directory (AAD/AADDS)**: Manages user authentication and access.
2. **Database Tier**: Includes:
   - **Azure SQL Database** for user information.
   - **Cosmos DB** for web service data.
3. **Web Tier**: Hosts the frontend application in an Azure Kubernetes Service (AKS) cluster.
4. **App Tier**: Runs backend microservices in containers.
5. **Compute Tier**: Provides virtual machines for administrative tasks and batch processing.
6. **Network Security Groups (NSGs)**: Implements access control rules for secure communication between tiers.

---

## Features

- **Infrastructure as Code (IaC)**: Uses Terraform for reproducible and scalable deployments.
- **Containerized Services**: Leverages Kubernetes to orchestrate web and app tiers.
- **Security Best Practices**: Includes NSGs to restrict access to resources.
- **Modular Design**: Each tier is implemented as a separate Terraform module for flexibility and reusability.
- **Scalable Databases**: Azure SQL Database and Cosmos DB support growing application needs.

---

## Deployment Instructions

### Prerequisites

1. **Azure CLI**: Install and authenticate to your Azure account.
   ```bash
   az login

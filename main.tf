provider "azurerm" {
  features {}
}

module "active_directory" {
  source = "./modules/active_directory"
}

module "database" {
  source = "./modules/database"
}

module "web_tier" {
  source = "./modules/web_tier"
}

module "app_tier" {
  source = "./modules/app_tier"
}

module "compute" {
  source = "./modules/compute"
}

module "security_groups" {
  source = "./modules/security_groups"
}

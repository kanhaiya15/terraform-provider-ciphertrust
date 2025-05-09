---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_domain Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_domain (Resource)



## Example Usage

```terraform
# Terraform Configuration for CipherTrust Provider

# This configuration demonstrates the creation of a domain resource
# with the CipherTrust provider, including setting up domain details
# and custom metadata.

terraform {
  # Define the required providers for the configuration
  required_providers {
    # CipherTrust provider for managing CipherTrust resources
    ciphertrust = {
      # The source of the provider
      source = "ThalesGroup/CipherTrust"
      # Version of the provider to use
      version = "1.0.0-pre3"
    }
  }
}

# Configure the CipherTrust provider for authentication
provider "ciphertrust" {
	# The address of the CipherTrust appliance (replace with the actual address)
  address = "https://10.10.10.10"

  # Username for authenticating with the CipherTrust appliance
  username = "admin"

  # Password for authenticating with the CipherTrust appliance
  password = "ChangeMe101!"
}

# Add a resource of type CM Domain with the name domain_tf
resource "ciphertrust_domain" "domain" {
  # The name of the domain
  name = "domain_tf"

  # List of administrators for the domain
  admins = ["admin"]

  # To allow user creation and management in the domain, set it to true.
  allow_user_management = false

  # Optional end-user or service data stored with the domain.
  meta_data = {
      "abc": "xyz"
  }
}

# Output the unique ID of the created CM domain
output "domain_id" {
	value = ciphertrust_domain.domain.id
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `admins` (List of String) List of administrators for the domain
- `name` (String) The name of the domain

### Optional

- `allow_user_management` (Boolean) To allow user creation and management in the domain, set it to true. The default value is false.
- `hsm_connection_id` (String) The ID of the HSM connection. Required for HSM-anchored domains.
- `hsm_kek_label` (String) Optional name field for the domain KEK for an HSM-anchored domain. If not provided, a random UUID is assigned for KEK label.
- `meta_data` (Map of String) Optional end-user or service data stored with the domain. Should be JSON-serializable.
- `parent_ca_id` (String) This optional parameter is the ID or URI of the parent domain's CA. This CA is used for signing the default CA of a newly created sub-domain. The oldest CA in the parent domain is used if this value is not supplied.

### Read-Only

- `account` (String)
- `application` (String)
- `created_at` (String)
- `dev_account` (String)
- `id` (String) The ID of this resource.
- `updated_at` (String)
- `uri` (String)

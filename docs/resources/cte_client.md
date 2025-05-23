---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_cte_client Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  CipherTrust Transparent Encryption (CTE) delivers data-at-rest encryption with centralized key management, privileged user access control, and detailed data access audit logging. This protects data wherever it resides—on-premises, across multiple clouds, and within big data.
  CTE:
  
  - Encrypts files and raw data
  - Controls which users can decrypt and access that data
  - Controls which processes and executables can decrypt and encrypt that data
  - Generates fine-grained audit trails on those processes, executables, and users
---

# ciphertrust_cte_client (Resource)

CipherTrust Transparent Encryption (CTE) delivers data-at-rest encryption with centralized key management, privileged user access control, and detailed data access audit logging. This protects data wherever it resides—on-premises, across multiple clouds, and within big data.

	CTE:

	- Encrypts files and raw data
	- Controls which users can decrypt and access that data
	- Controls which processes and executables can decrypt and encrypt that data
	- Generates fine-grained audit trails on those processes, executables, and users



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) Name to uniquely identify the client. This name will be visible on the CipherTrust Manager.
- `password_creation_method` (String) Password creation method for the client. Valid values are MANUAL and GENERATE. The default value is GENERATE.

### Optional

- `client_locked` (Boolean) Whether the CTE client is locked. The default value is false. Enable this option to lock the configuration of the CTE Agent on the client. Set to true to lock the configuration, set to false to unlock. Locking the Agent configuration prevents updates to any policies on the client.
- `client_mfa_enabled` (Boolean) Whether MFA is enabled on the client.
- `client_type` (String) Type of CTE Client. The default value is FS. Valid values are CTE-U and FS.
- `communication_enabled` (Boolean) Whether communication with the client is enabled. The default value is false. Can be set to true only if registration_allowed is true.
- `del_client` (Boolean) Whether to mark the client for deletion from the CipherTrust Manager. The default value is false.
- `description` (String) Description to identify the client.
- `disable_capability` (String) Client capability to be disabled. Only EKP - Encryption Key Protection can be disabled.
- `dynamic_parameters` (String) Array of parameters to be updated after the client is registered. Specify the parameters in the name-value pair JSON format strings. Make sure to specify all the parameters even if you want to update one or more parameters. For example, if there are two parameters in the CTE client list and you want to update the value of "param1", then specify the correct value (one from the "allowed_values") in the "current_value" field, and keep the remaining parameters intact.
- `enable_domain_sharing` (Boolean) Whether domain sharing is enabled for the client.
- `enabled_capabilities` (String) Client capabilities to be enabled. Separate values with comma. Valid values are LDT and EKP
- `labels` (Map of String) Labels are key/value pairs used to group resources. They are based on Kubernetes Labels, see https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/.
- `lgcs_access_only` (Boolean) Whether the client can be added to an LDT communication group. If lgcs_access_only is set to false, the client can be added to an LDT communication group. Only available on Windows clients.
- `max_num_cache_log` (Number) Maximum number of logs to cache.
- `max_space_cache_log` (Number) Maximum space for the cached logs.
- `password` (String) Password for the client. Required when password_creation_method is MANUAL.
- `profile_id` (String) ID of the profile that contains logger, logging, and QOS configuration.
- `profile_identifier` (String) Identifier of the Client Profile to be associated with the client. If not provided, the default profile will be linked.
- `protection_mode` (String) Update protection mode for windows client. This change is irreversible. The valid value is "CTE RWP"
- `registration_allowed` (Boolean) Whether client's registration with the CipherTrust Manager is allowed. The default value is false. Set to true to allow registration.
- `shared_domain_list` (List of String) List of domains in which the client needs to be shared.
- `system_locked` (Boolean) Whether the system is locked. The default value is false. Enable this option to lock the important operating system files of the client. When enabled, patches to the operating system of the client will fail due to the protection of these files.

### Read-Only

- `id` (String) Identifier of a CTE client to be generated on successful creation of Client

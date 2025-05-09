---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_cte_csigroup Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  This section contains APIs for managing Storage Group resources related to Kubernetes Container Storage Interface (CSI).
---

# ciphertrust_cte_csigroup (Resource)

This section contains APIs for managing Storage Group resources related to Kubernetes Container Storage Interface (CSI).



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `kubernetes_namespace` (String) Name of the K8s namespace.
- `kubernetes_storage_class` (String) Name of the K8s StorageClass.
- `name` (String) Name to uniquely identify the CSI storage group. This name will be visible on the CipherTrust Manager.

### Optional

- `client_id` (String) ID of the client to be removed from the client group.
- `client_list` (List of String) List of identifiers of clients to be associated with the client group. This identifier can be the name or UUID.
- `client_profile` (String) Optional Client Profile for the storage group. If not provided, the default profile will be used.
- `description` (String) Optional description for the storage group.
- `gp_id` (String) ID of the guard policy to be updated in the client group.
- `guard_enabled` (Boolean) Enable or disable the GuardPolicy. Set to true to enable, false to disable.
- `op_type` (String) Update CSIGroup Option
- `policy_list` (List of String) List of CSI policy identifiers to be associated with the storage group. This identifier can be the name or UUID.

### Read-Only

- `id` (String) The ID of this resource.

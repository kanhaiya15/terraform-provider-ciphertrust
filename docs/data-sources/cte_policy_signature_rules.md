---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_cte_policy_signature_rules Data Source - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_cte_policy_signature_rules (Data Source)





<!-- schema generated by tfplugindocs -->
## Schema

### Optional

- `policy` (String)

### Read-Only

- `rules` (Attributes List) (see [below for nested schema](#nestedatt--rules))

<a id="nestedatt--rules"></a>
### Nested Schema for `rules`

Read-Only:

- `account` (String)
- `created_at` (String)
- `id` (String) ID of the Signature Rule within the parent CTE Client Policy
- `policy_id` (String)
- `signature_set_id` (Number)
- `signature_set_name` (Boolean)
- `updated_at` (String)
- `uri` (String)

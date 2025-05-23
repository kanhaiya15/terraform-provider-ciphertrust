# Attaches a policy to principals on CipherTrust Manager

This example shows how to:
- Attaches a policy to principals

These steps explain how to:
- Configure CipherTrust Manager Provider parameters required to run the examples
- Configure parameters required to attache a policy to principals
- Run the example


## Configure CipherTrust Manager

### Edit the provider block in main.tf

```bash
provider "ciphertrust" {
  address  = "https://cm-address"
  username = "cm-username"
  password = "cm-password"
  domain   = "cm-domain"
  bootstrap = "no"
}
```

## Configure policy attachment information
Edit the policy attachment resource configuration in main.tf with actual values
```bash
resource "ciphertrust_policy_attachments" "policy_attachment" {
  	policy = "mypolicy"
	principalSelector = {
		acct = "pers-jsmith"
		user = "apitestuser"
	}
}
```

## Run the Example

```bash
terraform init
terraform apply
```

## Destroy Resources
Resources must be destroyed before another sample script using the same domain name is run.

```bash
terraform destroy
```

Run this step even if the apply step fails.
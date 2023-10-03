# aks-lz-prod-secure
Secure AKS landing zone created via https://azure.github.io/AKS-Construction/?secure=private&amp;deploy.deployItemKey=deployTf

```
terraform fmt
terraform init
terraform validate
terraform plan -out main.tfplan
terraform apply main.tfplan
terraform output
```

The landing zone accelerator contains the below resources in a VNet:
1. AKS cluster (User node pool and System node pool)
2. Azure key vault
3. Azure Container Registry

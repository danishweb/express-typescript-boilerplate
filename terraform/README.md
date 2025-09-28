# 🏗️ Infrastructure as Code

This directory contains Terraform configuration for AWS infrastructure.

## 📁 Structure

```
terraform/
├── environments/
│   ├── dev/terraform.tfvars      # Development environment
│   ├── staging/terraform.tfvars  # Staging environment
│   └── prod/terraform.tfvars     # Production environment
├── main.tf                       # Core infrastructure
├── iam.tf                        # IAM roles and policies
├── s3.tf                         # S3 bucket configuration
├── codepipeline.tf              # CI/CD pipeline
└── variables.tf                 # Variable definitions
```

## 🚀 Deployment

### Via GitHub Actions (Recommended)
1. Go to **Actions** → **Terraform Infrastructure**
2. Click **Run workflow**
3. Select environment and action
4. Monitor deployment progress

### Manual Deployment
```bash
cd terraform
terraform init
terraform plan -var-file="environments/dev/terraform.tfvars"
terraform apply -var-file="environments/dev/terraform.tfvars"
```

## 🌍 Environments

| Environment | Branch | Resources | Purpose |
|-------------|--------|-----------|---------|
| **dev** | `develop` | Minimal | Development & testing |
| **staging** | `staging` | Medium | Pre-production testing |
| **prod** | `main` | High | Production workload |

## 🔧 Configuration

Edit `terraform.tfvars` files to customize:
- **Resource sizes** (CPU, memory, instances)
- **Scaling limits** (min/max capacity)
- **Security settings** (WAF, Shield)
- **Monitoring** (logs, metrics, alerts)

## 📊 Resources Created

- **VPC** with public/private subnets
- **ECS Fargate** cluster and service
- **Application Load Balancer**
- **ECR** repository for Docker images
- **S3** bucket for artifacts
- **IAM** roles for GitHub Actions
- **CodePipeline** for deployments
- **CloudWatch** logs and monitoring

## 🔐 Security

- **OIDC authentication** (no AWS keys)
- **Private subnets** for containers
- **Security groups** with minimal access
- **VPC isolation** between environments

## 🚨 Troubleshooting

1. **Check Terraform state** in S3
2. **Verify IAM permissions** for GitHub Actions
3. **Review AWS Console** for resource status
4. **Check GitHub secrets** configuration

# 🚀 Deployment Guide

## Quick Setup (5 Minutes)

### 1. Repository Setup
```bash
# Update repository information
# Edit terraform/environments/*/terraform.tfvars
github_owner = "your-github-username"
github_repo = "your-repository-name"
```

### 2. GitHub Secrets
Add these secrets in GitHub repository settings:
- `AWS_ACCOUNT_ID`: Your AWS Account ID
- `AWS_ROLE_ARN`: (Get this after first deployment)

### 3. Deploy Infrastructure
1. Go to **Actions** → **Terraform Infrastructure**
2. Click **Run workflow**
3. Select **Environment**: `dev`, **Action**: `apply`
4. Wait for completion
5. Copy IAM Role ARN from output
6. Add it as `AWS_ROLE_ARN` secret

### 4. Deploy Application
```bash
git push origin develop
```

## 🌍 Environment Management

| Branch | Environment | Resources | Purpose |
|--------|-------------|-----------|---------|
| `develop` | dev | 1 container, 256 CPU | Development |
| `staging` | staging | 2 containers, 512 CPU | Testing |
| `main` | prod | 3+ containers, 1024+ CPU | Production |

## 🔧 Manual Controls

### Deploy Infrastructure
- **Actions** → **Terraform Infrastructure** → **Run workflow**
- Choose environment and action (plan/apply/destroy)

### Deploy Application
- Push code to any branch
- GitHub Actions handles the rest automatically

## 📊 Monitoring

- **GitHub Actions**: Deployment status and logs
- **AWS Console**: Resource status and metrics
- **CloudWatch**: Application logs and monitoring

## 🚨 Troubleshooting

1. **Check GitHub Actions logs** for errors
2. **Verify AWS resources** in AWS Console
3. **Check GitHub secrets** are correct
4. **Review repository permissions** in GitHub

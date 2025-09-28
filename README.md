# 🚀 Express TypeScript Boilerplate with AWS CI/CD

A production-ready Express.js TypeScript boilerplate with complete AWS CI/CD pipeline using GitHub Actions, ECS Fargate, and Terraform.

## ✨ Features

- **Express.js** with TypeScript
- **Complete CI/CD** with GitHub Actions
- **AWS Infrastructure** as Code (Terraform)
- **Container Deployment** with ECS Fargate
- **Multi-environment** support (dev/staging/prod)
- **OIDC Authentication** (no AWS keys!)
- **Auto-scaling** and load balancing
- **Health checks** and monitoring

## 🚀 Quick Start

### 1. Clone and Setup
```bash
git clone https://github.com/your-username/express-boilerplate.git
cd express-boilerplate
npm install
```

### 2. Update Repository Info
Edit `terraform/environments/*/terraform.tfvars`:
```hcl
github_owner = "your-github-username"
github_repo = "your-repository-name"
```

### 3. Add GitHub Secrets
In your GitHub repository settings:
- `AWS_ACCOUNT_ID`: Your AWS Account ID
- `AWS_ROLE_ARN`: (Get this after first deployment)

### 4. Deploy Infrastructure
1. Go to **Actions** → **Terraform Infrastructure**
2. Click **Run workflow**
3. Select **Environment**: `dev`, **Action**: `apply`
4. Wait for completion and copy the IAM Role ARN
5. Add it as `AWS_ROLE_ARN` secret

### 5. Deploy Application
```bash
git push origin develop
```
GitHub Actions will automatically build and deploy your app!

## 🏗️ Architecture

```
GitHub → GitHub Actions → AWS
├── ECR (Docker Registry)
├── ECS Fargate (Containers)
├── ALB (Load Balancer)
├── VPC (Networking)
└── CloudWatch (Monitoring)
```

## 📁 Project Structure

```
├── .github/workflows/     # CI/CD pipelines
├── terraform/            # Infrastructure as Code
├── src/                  # Express.js application
├── test/                 # Test files
└── Dockerfile           # Container definition
```

## 🌍 Environments

- **Development**: `develop` branch → dev environment
- **Staging**: `staging` branch → staging environment  
- **Production**: `main` branch → production environment

## 🛠️ Development

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Run tests
npm test

# Build for production
npm run build
```

## 📚 Documentation

- [Terraform Infrastructure](terraform/README.md)
- [API Documentation](src/api/README.md)
- [Deployment Guide](docs/DEPLOYMENT.md)

## 🔧 Configuration

### Environment Variables
```bash
NODE_ENV=development
PORT=3000
```

### Terraform Variables
Edit `terraform/environments/*/terraform.tfvars` for environment-specific settings.

## 🚨 Troubleshooting

1. **Check GitHub Actions logs** for deployment issues
2. **Verify AWS resources** in AWS Console
3. **Check GitHub secrets** are correctly set
4. **Review repository permissions** in GitHub

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/your-username/express-boilerplate/issues)
- **Discussions**: [GitHub Discussions](https://github.com/your-username/express-boilerplate/discussions)

---

**🎉 Ready to deploy! Push your code and watch the magic happen!**
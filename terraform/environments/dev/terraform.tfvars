# Development Environment Variables

# AWS Configuration
aws_region = "ap-south-1"
project_name = "myapp-dev"

# VPC Configuration
vpc_cidr = "10.0.0.0/16"

# GitHub Configuration
github_owner = "Danish"  # Replace with your GitHub username
github_repo = "my-express-app"  # Replace with your repository name
github_branch = "develop"

# ECS Configuration
ecs_task_cpu = 256
ecs_task_memory = 512
ecs_service_desired_count = 1

# Auto Scaling Configuration
enable_autoscaling = true
autoscaling_min_capacity = 1
autoscaling_max_capacity = 2

# Tags
environment = "dev"

# Additional Development-specific variables
enable_debug_logging = true
backup_retention_days = 7
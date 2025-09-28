# Staging Environment Variables

# AWS Configuration
aws_region   = "ap-south-1"
project_name = "myapp-staging"

# VPC Configuration
vpc_cidr = "10.1.0.0/16"

# GitHub Configuration
github_owner  = "Danish"         # Replace with your GitHub username
github_repo   = "my-express-app" # Replace with your repository name
github_branch = "staging"

# ECS Configuration
ecs_task_cpu              = 512
ecs_task_memory           = 1024
ecs_service_desired_count = 2

# Auto Scaling Configuration
enable_autoscaling       = true
autoscaling_min_capacity = 2
autoscaling_max_capacity = 4

# Tags
environment = "staging"

# Additional Staging-specific variables
enable_debug_logging  = false
backup_retention_days = 14
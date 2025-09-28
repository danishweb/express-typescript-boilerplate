# Production Environment Variables

# AWS Configuration
aws_region   = "ap-south-1"
project_name = "myapp-prod"

# VPC Configuration
vpc_cidr = "10.2.0.0/16"

# GitHub Configuration
github_owner  = "Danish"         # Replace with your GitHub username
github_repo   = "my-express-app" # Replace with your repository name
github_branch = "main"

# ECS Configuration
ecs_task_cpu              = 1024
ecs_task_memory           = 2048
ecs_service_desired_count = 3

# Auto Scaling Configuration
enable_autoscaling       = true
autoscaling_min_capacity = 3
autoscaling_max_capacity = 6

# Tags
environment = "prod"

# Additional Production-specific variables
enable_debug_logging  = false
backup_retention_days = 30

# Production-specific security settings
enable_waf                 = true
enable_shield              = true
enable_enhanced_monitoring = true
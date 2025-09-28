variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "express-app"
}

variable "project_name" {
  description = "Project name (used for resource naming)"
  type        = string
}

variable "container_port" {
  description = "Port the container exposes"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "Desired number of application containers"
  type        = number
  default     = 2
}

variable "cpu" {
  description = "CPU units for the container (1024 = 1 vCPU)"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Memory for the container in MB"
  type        = number
  default     = 512
}

variable "ecs_task_cpu" {
  description = "ECS task CPU (alternative to cpu variable)"
  type        = number
  default     = null
}

variable "ecs_task_memory" {
  description = "ECS task memory (alternative to memory variable)"
  type        = number
  default     = null
}

variable "ecs_service_desired_count" {
  description = "ECS service desired count (alternative to desired_count)"
  type        = number
  default     = null
}

variable "health_check_path" {
  description = "Health check path for the application"
  type        = string
  default     = "/health"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "github_branch" {
  description = "GitHub branch for OIDC trust"
  type        = string
  default     = "main"
}

variable "enable_autoscaling" {
  description = "Enable auto scaling"
  type        = bool
  default     = false
}

variable "autoscaling_min_capacity" {
  description = "Minimum capacity for auto scaling"
  type        = number
  default     = 1
}

variable "autoscaling_max_capacity" {
  description = "Maximum capacity for auto scaling"
  type        = number
  default     = 3
}

variable "enable_debug_logging" {
  description = "Enable debug logging"
  type        = bool
  default     = false
}

variable "backup_retention_days" {
  description = "Backup retention days"
  type        = number
  default     = 7
}

variable "enable_waf" {
  description = "Enable WAF"
  type        = bool
  default     = false
}

variable "enable_shield" {
  description = "Enable Shield"
  type        = bool
  default     = false
}

variable "enable_enhanced_monitoring" {
  description = "Enable enhanced monitoring"
  type        = bool
  default     = false
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}
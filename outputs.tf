output "service_name" {
  description = "ECS Service name"
  value       = "${element(compact(concat(aws_ecs_service.default.*.name, aws_ecs_service.ecs_service_no_alb.*.name)),0)}"
}

output "service_role_arn" {
  description = "ECS Service role ARN"
  value       = "${aws_iam_role.ecs_service.arn}"
}

output "task_role_name" {
  description = "ECS Task role name"
  value       = "${aws_iam_role.ecs_task.name}"
}

output "task_role_arn" {
  description = "ECS Task role ARN"
  value       = "${aws_iam_role.ecs_task.arn}"
}

output "service_security_group_id" {
  description = "Security Group ID of the ECS task"
  value       = "${aws_security_group.ecs_service.id}"
}

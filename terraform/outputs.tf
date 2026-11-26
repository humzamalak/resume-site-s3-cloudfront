output "url" {
  value = local.use_domain ? "https://${var.domain_name}" : "https://${aws_cloudfront_distribution.site.domain_name}"
}

output "bucket" {
  value = aws_s3_bucket.site.id
}

output "distribution_id" {
  value = aws_cloudfront_distribution.site.id
}

output "github_deploy_role_arn" {
  value = var.github_repository != "" ? aws_iam_role.deploy[0].arn : null
}

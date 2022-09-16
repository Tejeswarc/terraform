# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "collectively-stage_log_group" {
  name              = "/ecs/cb-app"
  retention_in_days = 30

  tags = {
    Name = "collectively-stage-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "collectively-stage_log_stream" {
  name           = "collectively-stage-log-stream"
  log_group_name = aws_cloudwatch_log_group.collectively-stage_log_group.name
}




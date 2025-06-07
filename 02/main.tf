resource "aws_budgets_budget" "example" {
  name         = "My-Budget"
  budget_type  = "COST" # "COST", "USAGE", "RI_COVERAGE" など
  time_unit    = "MONTHLY" # または "QUARTERLY", "ANNUALLY"
  limit_amount = 10
  limit_unit   = "USD"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL" # または "FORECASTED"
    threshold           = 90
    threshold_type      = "PERCENTAGE"

    subscriber_sns_topic_arns  = ["SNSトピックARN"]
    subscriber_email_addresses = ["example@example.com"]
  }
}

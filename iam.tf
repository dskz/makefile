resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    var.user_one,
    var.user_two,
  ]

  group = var.group

}
resource "aws_iam_group" "group" {
  name = var.group
}

resource "aws_iam_user" "user_one" {
  name = var.user_one
}

resource "aws_iam_user" "user_two" {
  name = var.user_two
}


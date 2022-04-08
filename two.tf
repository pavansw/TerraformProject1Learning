
resource "aws_iam_user" "usersCreate1" {
count = 5
name = "accenture${count.index}"
}


data "aws_iam_policy_document" "this" {
  statement {
    sid = "${var.policy_sid}"

    actions = ["${var.policy_actions}"]

    resources = ["${var.policy_resources}"]
  }
}

resource "aws_iam_policy" "this" {
  name   = "${var.policy_name}"
  path   = "/"
  policy = "${data.aws_iam_policy_document.this.json}"
}

resource "aws_iam_group" "this" {
  name = "${var.group_name}"
}

resource "aws_iam_group_policy_attachment" "this" {
  group      = "${aws_iam_group.this.name}"
  policy_arn = "${aws_iam_policy.this.arn}"
}

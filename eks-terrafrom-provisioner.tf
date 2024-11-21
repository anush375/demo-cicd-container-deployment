# resource "aws_eks_cluster" "eks_cluster" {
#   name     = "my-demo-cluster"
#   role_arn = aws_iam_role.eks_role.arn

#   vpc_config {
#     subnet_ids = aws_subnet.subnet_ids.*.id
#   }
# }

# resource "aws_iam_role" "eks_role" {
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action    = "sts:AssumeRole"
#         Effect    = "Allow"
#         Principal = {
#           Service = "eks.amazonaws.com"
#         }
#       },
#     ]
#   })
# }

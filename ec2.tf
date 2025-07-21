# resource "aws_instance" "web1" {
#   # ami = "${data.aws_ami.my_ami.id}"
#   ami                         = "ami-020cba7c55df1f615"
#   availability_zone           = "us-east-1a"
#   instance_type               = "t2.micro"
#   key_name                    = "SecOps-Key"
#   subnet_id                   = aws_subnet.subnet1-public.id
#   vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
#   associate_public_ip_address = true
#   tags = {
#     Name       = "Server-1"
#     Env        = "Prod"
#     Owner      = "dhriti"
#     CostCenter = "ABCD"
#   }
#   user_data = <<-EOF
#               #!/bin/bash
#               sleep 15
#               apt-get update -y
#               apt-get install nginx -y
#               echo "<h1>${var.env}-Server-1</h1>" > /var/www/html/index.html
#               systemctl start nginx
#               systemctl enable nginx
#             EOF
# }
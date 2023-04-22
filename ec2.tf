resource "aws_instance" "web-1" {
   ami = "ami-007855ac798b5175e"    #coied from AWS account randomly
   availability_zone = "us-east-1a"
   instance_type = "t2.micro"
   key_name = "LAPTOP-KEY"           #Given by me  
   subnet_id = "${aws_subnet.subnet1-public.id}"
   vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
   associate_public_ip_address = true  
   tags = {
       Name = "${var.env}-Server-1"
       Env = "Prod"
       Owner = "Sree"
   CostCenter = "ABCD"
   }
   user_data = <<-EOF
   #!/bin/bash
   sudo apt-get update
   sudo apt-get install -y nginx
   echo "<h1>${var.env}-server-1</h1>" | sudo tee /var/www/html/index.nginx-debian.html
   EOF
}


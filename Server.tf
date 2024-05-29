
# server.tf

# Create EC Instance the Jenkins server
resource "aws_instance" "jenkins-server" {
  # Specify the AMI id defined above
  ami                         = aws_intance.ami
  instance_type               = var.instance_type
  key_name                    = "jenkins-server"
  subnet_id                   = aws_subnet.jenkins-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.jenkins-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  # Specify a script to be executed when the instance is launched
  user_data                   = file("jenkins-script.sh")
  tags = {
    Name = "${var.env_prefix}-server"
  }
}

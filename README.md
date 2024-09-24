steps to install terraform on linux
go to terraform.io
copy the url of AMD64 binery
go to your instance wget https://releases.hashicorp.com/terraform/1.9.6/terraform_1.9.6_freebsd_amd64.zip
install unzip and unzip terraform file
mv terraform to /usr/local/bin


install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# README

*Athena application.

Things you may want to cover:

* Deployment instructions

Make sure you have ansible installed.

Deploy a Ubuntu box (on AWS use ami-58d7e821)

Enable passwordless access to ubuntu user like this
cat ~/.ssh/id_rsa.pub | ssh -i ~/.ssh/your_key.pem ubuntu@ec2-your-server.eu-west-1.compute.amazonaws.com "cat >> .ssh/authorized_keys"

Need to allow port 22 and port 80 on the security group

Make sure it has a public IP address and internet gateway.  You should be able to SSH to this.

Set the URI in the hosts.txt file under [appservers] (copy the host.txt.example file for layhout)

Set the URI in the production.rb file

Then run
ansible-playbook -i install/hosts.txt install/ansible_install.yml --key-file "~/.ssh/yourkey.pem"

bundle exec cap production deploy

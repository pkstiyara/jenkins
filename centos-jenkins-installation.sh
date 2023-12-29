#!/bin/bash

# Download Jenkins repository configuration file
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins GPG key for package verification
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Upgrade system packages
sudo yum upgrade -y

# Install required dependencies for the Jenkins package
sudo yum install fontconfig java-17-openjdk -y

# Install Jenkins
sudo yum install jenkins -y

# Reload systemd configuration to recognize the new service
sudo systemctl daemon-reload

# Enable Jenkins to start on system boot
sudo systemctl enable jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Display the status of Jenkins service
sudo systemctl status jenkins

# Prompt to quit the status display
echo "Press 'q' to exit the status display."
q

# Display the initialAdminPassword for Jenkins login in bigger font and blue color
echo -e "\e[34;1mJenkins initialAdminPassword:\e[0m"
echo -e "\e[34;1m$(cat /var/lib/jenkins/secrets/initialAdminPassword)\e[0m"

# Determine public IP address and default port (assuming Jenkins runs on port 8080)
public_ip=$(curl -s ifconfig.me)
default_port=8080

# Print public IP address and default port in green color
echo -e "\e[32mJenkins is accessible at: http://${public_ip}:${default_port}\e[0m"

# Fun moving message
echo -e "\nJenkins is installed successfully! 🎉"
echo -e "Enjoy automating your builds and deployments! 🚀"





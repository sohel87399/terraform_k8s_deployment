# Terraform Kubernetes App Deployment
[LIVE DEMO](https://terraform-k8s-app.onrender.com)
A beginner-friendly Terraform project that deploys a custom-styled Nginx application to a local Kubernetes cluster (Minikube).

![Status](https://img.shields.io/badge/Status-Active-success)
![Terraform](https://img.shields.io/badge/Terraform-1.0+-623CE4)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Minikube-326CE5)

## 🚀 Features

- **Infrastructure as Code**: Fully managed by Terraform.
- **Custom Visuals**: Serves a custom HTML/CSS page using Kubernetes ConfigMaps.
- **Local Development**: Optimized for Minikube on WSL 2.

## 🛠️ Prerequisites

To run this project, you need the following installed in your **WSL 2 (Ubuntu)** environment:

1.  **Docker**: Container runtime.
2.  **Minikube**: Local Kubernetes cluster.
3.  **Terraform**: Infrastructure automation tool.
4.  **kubectl**: Kubernetes command-line tool.

## 📦 Project Structure

```text
terraform-k8s-app-deployment/
├── configmap.tf    # Defines the HTML/CSS content
├── deployment.tf   # Managed the Nginx Pods and Replicas
├── service.tf      # Exposes the application (NodePort)
├── main.tf         # Kubernetes Provider Configuration
├── variables.tf    # Configurable variables
├── outputs.tf      # Output values (Service Name, Port)
└── versions.tf     # Provider versions
```

## 🏁 Quick Start

### 1. Start Minikube
Start your local cluster (ensure Docker is running):
```bash
minikube start --memory=2048mb --driver=docker
```

### 2. Initialize Terraform
Download the required providers:
```bash
terraform init
```

### 3. Deploy Application
Apply the configuration to create resources:
```bash
terraform apply -auto-approve
```

### 4. Access the App
Get the unique URL for the service:
```bash
minikube service nginx-app-service --url
```
Click the link to view your deployed application!

## 🎨 Customizing the Design
You can modify the website appearance by editing the HTML/CSS in **`configmap.tf`**.
After editing, run `terraform apply` again to update the live site.

## 🧹 Cleanup
To remove all resources created by this project:
```bash
terraform destroy -auto-approve
```


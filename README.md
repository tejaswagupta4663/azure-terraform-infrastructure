☁️ **Azure Infrastructure Automation using Terraform (Learning Project)**

---

## 📌 Project Overview

This project demonstrates how to provision and manage Azure infrastructure using Terraform, eliminating the need for manual configuration through the Azure Portal.

It reflects a real-world **Infrastructure as Code (IaC)** approach used by DevOps engineers to build repeatable, version-controlled, and automated cloud environments with confidence.

This setup provisions a complete Azure infrastructure stack including networking, security, and a Linux virtual machine — all using Terraform.

---

## 🎯 Why This Project Exists

In real production environments:

-   Infrastructure is never created manually
    
-   Cloud resources are always defined as code
    
-   Changes are tracked using version control (Git)
    
-   Environments must be reproducible at any time
    

---

## ✨ Features

-   Fully automated Azure infrastructure provisioning
    
-   Clean and modular Terraform configuration
    
-   Secure Linux Virtual Machine with SSH access
    
-   Proper resource dependency management
    
-   Easy teardown to ensure zero unnecessary cloud cost
    

---

## 🏗️ Infrastructure Components

The following Azure resources are provisioned through Terraform:

-   Resource Group
    
-   Virtual Network (VNet)
    
-   Subnet
    
-   Network Security Group (SSH enabled)
    
-   Public IP
    
-   Network Interface
    
-   Linux Virtual Machine (Ubuntu 22.04)
    

---

## 📁 Project Structure

```pgsql
azure-infrastructure-automation-terraform/
│
├── terraform/
│   ├── provider.tf
│   ├── resource-group.tf
│   ├── network.tf
│   ├── security.tf
│   ├── vm.tf
│   ├── output.tf
│
├── .gitignore
└── README.md
```

---

## ⚙️ Tools & Technologies

-   Terraform
    
-   Microsoft Azure
    
-   Azure CLI
    
-   Git & GitHub
    
-   Linux (Ubuntu)
    

---

## ▶️ How to Run This Project

### 1️⃣ Authenticate with Azure

```nginx
az login
```

### 2️⃣ Initialize Terraform

```csharp
terraform init
```

### 3️⃣ Preview Infrastructure Changes

```nginx
terraform plan
```

### 4️⃣ Create Infrastructure

```nginx
terraform apply
```

### 5️⃣ Destroy Infrastructure (Safe Cleanup)

```nginx
terraform destroy
```

💡 **Always destroy resources after testing to avoid unexpected charges.**

---

## 🧪 Tested Scenarios

-   Terraform initialization and provider configuration
    
-   Resource Group creation
    
-   Network and security setup
    
-   Virtual Machine provisioning
    
-   Terraform destroy for clean rollback
    

---

## ⚠️ Common Issues & Learnings

Some Azure subscriptions restrict **Basic SKU Public IP** creation in specific regions.

-   This is a subscription or regional limitation
    
-   Not a Terraform code issue
    
-   The same Terraform configuration works correctly in supported regions or subscriptions
    

This reflects real-world cloud constraints commonly handled by DevOps engineers.

---

## 🔐 Security Considerations

-   SSH key-based authentication
    
-   No hardcoded credentials
    
-   Terraform state files excluded using `.gitignore`
    

---

## 📚 Key Learnings

-   Infrastructure as Code (IaC) fundamentals
    
-   Azure networking concepts
    
-   Complete Terraform workflow (init → plan → apply → destroy)
    
-   Handling real cloud subscription limitations
    
-   Writing readable and maintainable Terraform code
    
-   Git-based infrastructure version control
    

---

## 🔮 Future Plans

-   Introduce variable files (`variables.tf`)
    
-   Configure remote backend for Terraform state
    
-   Implement environment separation (dev / stage / prod)
    
-   Extend architecture with Load Balancer and Autoscaling
    

---

## 🤝 Contribution

This project is open for learning and collaboration.  
Suggestions, improvements, and discussions are always welcome.

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 👤 Maintained by

**Tejaswa Gupta**  
DevOps | Cloud | Infrastructure Automation

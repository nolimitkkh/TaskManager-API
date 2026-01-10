# Task Manager API

A simple RESTful API for managing tasks built with Flask and SQLite, containerized with Docker.

## 🌐 Production URL

The application is live and accessible at:

- **Production Server:** http://161.35.207.86

## 🚀 Tech Stack

- **Python 3.11**
- **Flask** (Web Framework)
- **Flask-SQLAlchemy** (ORM)
- **SQLite** (Database)
- **Docker** (Containerization)

## 📦 Prerequisites

- Docker (or Docker Desktop)
- Git

## 🏃‍♂️ Quick Start with Docker

### 1. Clone the Repository

```bash
git clone https://github.com/nolimitkkh/TaskManager-API.git
cd TaskManager-API
```

### 2. Build the Docker Image

```bash
docker build -t task-manager-api .
```

### 3. Run the Container

```bash
docker run -d -p 5000:5000 --name task-api task-manager-api
```

### 4. Access the API

Open your browser and navigate to:

```
http://localhost:5000
```

## 🖥️ VPS Deployment Guide

Follow these steps to deploy the Task Manager API on a Virtual Private Server (VPS).

### Prerequisites for VPS

- A VPS with Ubuntu (20.04 or later recommended)
- SSH access to your VPS
- Root or sudo privileges

### Step 1: Install Git and Docker on VPS

Connect to your VPS via SSH and run the following commands:

```bash
# Update system packages
sudo apt update
sudo apt upgrade -y

# Install Git
sudo apt install git -y
git --version

# Install Docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version
```

### Step 2: Clone Your GitHub Repository

```bash
# Clone your repo
git clone https://github.com/nolimitkkh/TaskManager-API.git
cd TaskManager-API

# List files to verify
ls -la
```

### Step 3: Build and Run Docker Container on VPS

```bash
# Build Docker image
sudo docker build -t task-manager-api .

# Run container (map port 80 to 5000 for web access)
sudo docker run -d -p 80:5000 --name task-api task-manager-api

# Check if container is running
sudo docker ps
```

### Step 4: Verify Deployment

Test your deployment using curl or a web browser:

```bash
# Using curl from VPS
curl http://161.35.207.86
```

Or open your browser and navigate to:

```
http://161.35.207.86
```

## 📝 API Endpoints

Documentation for available API endpoints will be added here.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📄 License

This project is licensed under the MIT License.

## 👤 Author

**KARAM**

- GitHub: [@nolimitkkh](https://github.com/nolimitkkh)

---

**Note:** Remember to update your GitHub repository's "Website" URL setting to point to: `http://161.35.207.86`

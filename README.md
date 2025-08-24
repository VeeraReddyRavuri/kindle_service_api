# Kindle Service API & Automated Operations Toolkit

## Overview
A cloud-deployable Python project simulating a Kindle library service, featuring a RESTful API and an automated operations toolkit. Designed to demonstrate API development, server monitoring, and production-style troubleshooting workflows on a Linux AWS EC2 environment.


## Features
- **RESTful API**: Add, view, and manage books in the Kindle library.
- **Automated Health Monitoring**: Bash script checks the API status every 10 seconds and alerts if the service is down.
- **Production-Style Troubleshooting**: Simulate outages, perform root cause analysis, and test server logs.
- **Real-Time Log Analysis**: Uses Unix commands (`grep`, `awk`, `tail`) to analyze logs.

## Tech Stack
- Python 3 (Flask)
- Bash scripting
- AWS EC2 (Ubuntu)
- Git
- Unix/Linux commands for monitoring

## Installation & Setup

1. **Clone the repository**
- git clone https://github.com/yourusername/kindle_service_api.git
- cd  kindle_service_api
2. **Create and activate virtual environment**
- python3 -m venv venv
- source venv/bin/activate
3. **Install dependencies**
- pip install -r requirements.txt
4. **Run Flask API**
- python3 app.py
5. **Run health check script**
- ./health_check.sh

## Usage
- Access the API: http://<EC2_PUBLIC_IP>:5000/books
- Health script continuously monitors the API and prints status updates.

## Notes
- Ensure port 5000 is open in your EC2 security group.

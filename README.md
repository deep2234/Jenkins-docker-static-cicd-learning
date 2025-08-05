# 🚀 Static Web App CI/CD with Jenkins, Docker & GitHub Webhooks

This project demonstrates a simple CI/CD pipeline using **Jenkins**, **Docker**, and **GitHub Webhooks** to automatically deploy a static website. Whenever code is pushed to the repository, Jenkins pulls the latest changes, rebuilds the Docker container, and serves the updated static website—all automatically.

---

## 📂 Project Structure

```
my-jenkins-docker-static-app/
├── index.html        # Static website homepage
├── Dockerfile        # Docker image to serve the static site
├── Jenkinsfile       # Jenkins pipeline configuration
├── style.css        
├── script.js
└── ...
```

---

## 🔧 Technologies Used

- **HTML, CSS, JS** – Static site content  
- **Docker** – Containerizes the static app  
- **Jenkins** – Automates the CI/CD pipeline  
- **GitHub Webhooks** – Triggers Jenkins jobs on every push  
- **ngrok** – Temporarily exposes localhost to the internet (for testing webhooks)

---

## 🔁 How It Works

1. **Code Push to GitHub** – Triggers the webhook  
2. **Webhook Hits Jenkins** – Jenkins receives the trigger  
3. **Jenkins Pipeline Runs** – Pulls latest code, rebuilds Docker image  
4. **Site Is Served** – Updated site is served via Docker container  

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/my-jenkins-docker-static-app.git
cd my-jenkins-docker-static-app
```

### 2. Start Jenkins (Docker)

```bash
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

- Access Jenkins at: [http://localhost:8080](http://localhost:8080)

### 3. Configure Jenkins

- Install required plugins:
  - Git
  - Docker Pipeline
  - GitHub Integration
- Add a Jenkins pipeline project
- Link your GitHub repository in the pipeline config

### 4. Run ngrok (for webhook testing)

```bash
ngrok http 8080
```

- Copy the HTTPS forwarding URL (e.g., `https://xxxx.ngrok-free.app/github-webhook/`) and use it in GitHub Webhook settings.

### 5. Set Up GitHub Webhook

- Go to your repo → **Settings** → **Webhooks**
- Paste the ngrok URL followed by `/github-webhook/`
- Choose `application/json` and trigger for `push` events

### ✅ Demo Workflow

1. Push a change to `index.html`
2. GitHub sends a webhook
3. Jenkins pulls code, builds Docker container
4. The updated site is automatically deployed

---

## 📸 Screenshots

- **Build Success in Jenkins**
- **Webhook Delivered**

---

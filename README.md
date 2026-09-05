# Production CI/CD Deployment Platform

A production-style CI/CD deployment platform built using GitHub Actions, Docker, Amazon ECR, Amazon EC2, AWS Systems Manager, IAM OIDC, Nginx, and CloudWatch.

The project demonstrates automated testing, containerization, secure AWS authentication, branch-based environment separation, automated deployment, health checks, rollback, and application monitoring.

---

## Architecture

Developer
   │
   ▼
GitHub Repository
   │
   ├── develop ───────────────┐
   │                          │
   │                    GitHub Actions
   │                          │
   │                          ▼
   │                         ECR
   │                          │
   │                         SSM
   │                          │
   │                          ▼
   │                    Development
   │                    Container :5001
   │
   └── main ─────────────────┐
                              │
                        GitHub Actions
                              │
                              ▼
                             ECR
                              │
                             SSM
                              │
                              ▼
                         Production
                         Container :5000
                              │
                              ▼
                            Nginx
                              │
                              ▼
                           Internet

CloudWatch
     ▲
     │
Production + Development Containers
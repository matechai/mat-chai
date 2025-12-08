# 42 Project Matcha

[![Spring Boot](https://img.shields.io/badge/SpringBoot-2.7.0-brightgreen)](https://spring.io/projects/spring-boot)
[![Angular](https://img.shields.io/badge/Angular-16-red)](https://angular.io/)
[![Neo4j](https://img.shields.io/badge/Neo4j-5.0-blue)](https://neo4j.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-latest-green)](https://www.mongodb.com/)
[![Docker](https://img.shields.io/badge/Docker-Compose-blue)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-blue)](LICENSE)

**Matcha** is a social matchmaking application developed as part of the 42 curriculum. The platform provides advanced user interactions, real-time chat, notifications, and matchmaking features using a modern tech stack.

---

## Table of Contents
- [Features](#features)  
- [Tech Stack](#tech-stack)  
- [Architecture](#architecture)  
- [Setup](#setup)  
- [Docker Compose](#docker-compose)  
- [.env Template](#env-template)  
- [Neo4j Dummy Users Script](#neo4j-dummy-users-script)  
- [Project Structure](#project-structure)  
- [License](#license)  

---

## Features
- **Authentication & Security:** JWT-based login and session management  
- **User Profiles:** Upload 1–5 pictures with location data  
- **Interactions:** Like, dislike, matchmaking  
- **Search & Filters:** Advanced filtering for finding users  
- **Notifications:** Receive notifications for likes, dislikes, matches, profile views, and chat availability  
- **Chat:** Real-time messaging allowed only between matched users  
- **Data Generation:** Python script to generate 500 dummy users in Neo4j for testing  

---

## Tech Stack
- **Backend:** Spring Boot with **GraphQL API**  
- **Frontend:** Angular  
- **Databases:**  
  - Neo4j (user storage and relationships)  
  - MongoDB (chat and notifications)  
- **Reverse Proxy:** Nginx  
- **Containerization:** Docker & Docker Compose  

---

## Architecture
The system is modular with clear responsibilities:  

- **Spring Boot backend:** Handles authentication, GraphQL API, business logic, and notifications  
- **Neo4j:** Stores users, relationships, and graph-based recommendations  
- **MongoDB:** Stores chat messages and notifications  
- **Angular frontend:** Consumes GraphQL API for dynamic UI  
- **Nginx:** Serves frontend and acts as reverse proxy  
- **Docker Compose:** Orchestrates all services  

### User Flow
1. Users register and upload 1–5 pictures with location data.  
2. Users can like, dislike, view profiles, and apply filters.  
3. Notifications are sent for likes, dislikes, matches, profile views, and chat availability.  
4. Only matched users can chat.  

---

## Setup

### Prerequisites
- Docker  
- Docker Compose  

### `.env` File
The project requires a `.env` file at the root containing environment variables for:  
- JWT configuration  
- Spring Boot configuration  
- MongoDB credentials  
- Neo4j credentials  
- Mail settings  
- File upload paths  
- GraphQL endpoint  

> **Note:** `.env` is **not included** in the repository for security reasons.

---

## Docker Compose

Build and run all services using Docker Compose:

```bash
git clone <your-repo-url>
cd matcha
docker-compose up --build
```
## Services & Ports

- Backend (Spring Boot GraphQL API): http://localhost:8080/graphql

- Frontend (Angular via Nginx): http://localhost

- Neo4j Browser: http://localhost:7474

- MongoDB: Accessible with credentials in .env

- Mongo Express: http://localhost:8081

## .env Template

Create a .env file in the root directory with the following placeholder values:
```bash
# Server
SERVER_PORT=8080
APP_URL=http://localhost

# JWT
JWT_TYPE=Bearer
JWT_SECRET=your_jwt_secret
JWT_EXPIRATIONMS_ACCESSTOKEN=3600000
JWT_EXPIRATIONMS_REFRESHTOKEN=86400000

# MongoDB
SPRING_DATA_MONGODB_URI=mongodb://username:password@mongodb:27017/matcha
SPRING_DATA_MONGODB_USERNAME=admin
SPRING_DATA_MONGODB_PASSWORD=admin
ME_CONFIG_MONGODB_SERVER=mongodb

# Neo4j
SPRING_NEO4J_URI=bolt://neo4j:7687
SPRING_NEO4J_AUTHENTICATION_USERNAME=neo4j
SPRING_NEO4J_AUTHENTICATION_PASSWORD=password

# Mail
SMTP_MAIL_HOST=smtp.example.com
SPRING_MAIL_PORT=587
SPRING_MAIL_USERNAME=your_email@example.com
SPRING_MAIL_PASSWORD=your_password
SPRING_MAIL_PROTOCOL=smtp
SPRING_MAIL_PROPERTIES_MAIL_SMTP_AUTH=true
SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_ENABLE=true
SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_REQUIRED=true
FRONTEND_URL=http://localhost

# File Upload
FILE_UPLOAD_PATH=/uploads

# GraphQL
GRAPHQL_PATH=/graphql
```
> **Note:** Please change it according to your credentials.

# Neo4j Dummy Users Script

Populate Neo4j with 500 dummy users for testing:
```python
# Inside the neo4j directory or container
python3 generate_users.py
```

The generated data will also be stored inside the neo4j directory.

## Project Structure
```bash
matcha/
├── backend/        # Spring Boot backend with GraphQL API
├── angular/        # Angular frontend
├── nginx/          # Nginx configuration
├── neo4j/          # Neo4j initialization scripts and dummy user generator
├── docker-compose.yml
├── .env            # Local environment variables (not in repo)
└── README.md
```
## License

This project is licensed under the MIT License.

## Architecture Diagram

<img width="1920" height="1080" alt="Spring Boot(1)" src="https://github.com/user-attachments/assets/26486c08-816b-4516-b009-cbab9b30c57a" />


This diagram shows how the frontend communicates with the backend via GraphQL, which interacts with Neo4j and MongoDB.

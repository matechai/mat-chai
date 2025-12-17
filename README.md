# 42 Project Matcha 

[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.4-6DB33F?logo=springboot&logoColor=white)](https://spring.io/projects/spring-boot) [![Angular](https://img.shields.io/badge/Angular-20.2-DD0031?logo=angular&logoColor=white)](https://angular.io/) [![Java](https://img.shields.io/badge/Java-17-007396?logoColor=white)](https://www.oracle.com/java/) [![TypeScript](https://img.shields.io/badge/TypeScript-5.0-3178C6?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)

[![Neo4j](https://img.shields.io/badge/Neo4j-5.0-008CC1?logo=neo4j&logoColor=white)](https://neo4j.com/) [![MongoDB](https://img.shields.io/badge/MongoDB-Latest-47A248?logo=mongodb&logoColor=white)](https://www.mongodb.com/) [![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker&logoColor=white)](https://www.docker.com/) [![Nginx](https://img.shields.io/badge/Nginx-Latest-009639?logo=nginx&logoColor=white)](https://nginx.org/) [![hits](https://myhits.vercel.app/api/hit/https%3A%2F%2Fgithub.com%2Fmatechai%2Fmat-chai?color=blue&label=hits&size=small&base_count=1)](https://myhits.vercel.app)

<br>

**Matcha** is a social matchmaking application developed as part of the 42 curriculum. The platform provides advanced user interactions, real-time chat, notifications, and matchmaking features using a modern tech stack.

<br>

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Architecture](#-architecture)
- [Quick Start](#-quick-start)
- [Setup](#-setup)
- [Services & Endpoints](#-services--endpoints)
- [.env Template](#-env-template)
- [Testing with Dummy Data](#-testing-with-dummy-data)


<br><br>


## ✨ Features

### 🔐 Authentication & Security
- JWT-based authentication
- Secure session management
- Email verification system
- Password strength validation

### 👤 User Profiles
- Upload 1–5 profile pictures
- Interactive location picker with map
- Real-time age calculation
- Bio and interests management

### 💫 Smart Interactions
- Like/Pass system with instant feedback
- Intelligent matchmaking algorithm
- Browse history tracking
- Block & report functionality

### 🔍 Advanced Search
- Filter by age, location, interests
- Sort by distance or compatibility
- Real-time search results
- Pagination support

### 🔔 Real-time Notifications
- Match notifications
- Profile view alerts
- Like/Unlike updates
- Message notifications
- WebSocket-based instant delivery

### 💬 Live Chat
- Real-time messaging
- Chat only with matched users
- Message history
- Online/Offline status
- Typing indicators

### 👮 Admin Panel
- User report management
- Ban/Unban functionality
- View reported users with reasons

<br>



## 🛠 Tech Stack

### Backend
```
Framework    : Spring Boot 3.5.4
Language     : Java 17
Security     : Spring Security + JWT
Real-time    : WebSocket (STOMP)
API          : GraphQL + REST
Build        : Gradle
```

**Key Dependencies:**
- `spring-boot-starter-graphql` - GraphQL API
- `spring-boot-starter-websocket` - Real-time communication
- `spring-boot-starter-security` - Authentication & Authorization
- `jjwt` - JWT token management
- `spring-boot-starter-mail` - Email notifications

### Frontend
```
Framework    : Angular 20.2
Language     : TypeScript 5.0
UI Library   : Standalone Components
State        : Signals API
Routing      : Angular Router
Forms        : Reactive Forms
```

**Key Features:**
- `zxcvbn` - Password strength validation
- `leaflet` - Interactive maps
- WebSocket client for real-time updates
- GraphQL client integration

### Databases
```
Graph DB     : Neo4j 5.0
  ├─ User profiles & relationships
  ├─ Matchmaking graph algorithms
  └─ Like/Block/Match connections

Document DB  : MongoDB
  ├─ Chat messages
  ├─ Notifications
  └─ User activity logs
```

### Infrastructure
```
Reverse Proxy : Nginx
Containerization : Docker & Docker Compose
Orchestration : Docker Compose with health checks
```

<br>



## 📁 Project Structure

```
matcha/
├── backend/        # Spring Boot backend with GraphQL API
├── angular/        # Angular frontend
├── nginx/          # Nginx configuration
├── neo4j/          # Neo4j initialization scripts and dummy user generator
├── docker-compose.yml
├── .env            # Local environment variables (not in repo)
└── README.md
```

<br>



## 🏗 Architecture  

```mermaid
graph TB
    subgraph "Client Layer"
        A[Angular Frontend<br/>Port 4200]
    end
    
    subgraph "Gateway Layer"
        B[Nginx<br/>Port 80]
    end
    
    subgraph "Application Layer"
        C[Spring Boot API<br/>Port 8080]
        D[GraphQL Endpoint]
        E[REST API]
        F[WebSocket Server]
    end
    
    subgraph "Data Layer"
        G[(Neo4j<br/>Port 7687)]
        H[(MongoDB<br/>Port 27017)]
    end
    
    A -->|HTTP/WS| B
    B -->|Proxy| C
    C --> D
    C --> E
    C --> F
    D -->|Users & Relationships| G
    E -->|Users & Relationships| G
    F -->|Chat & Notifications| H
    
    style A fill:#DD0031,color:#fff
    style B fill:#009639,color:#fff
    style C fill:#6DB33F,color:#fff
    style G fill:#008CC1,color:#fff
    style H fill:#47A248,color:#fff
```



<br>


## 🚀 Quick Start

### Prerequisites
- [Docker](https://www.docker.com/get-started) & Docker Compose
- Git

### One-Command Setup
```bash
git clone <repository-url>
cd matcha
cp .env.example .env  # Edit with your credentials
docker-compose up --build
```

🎉 **That's it!** Access the app at `http://localhost`


<br>


## 📋 Setup

### Step 1: Clone Repository
```bash
git clone <repository-url>
cd matcha
```

### Step 2: Environment Configuration

Create `.env` file in the root directory:

```bash
cp .env.example .env
```

Edit `.env` with your credentials (see [.env Template](#-env-template) below)

### Step 3: Start Services
```bash
docker-compose up --build
```

### Step 4: Initialize Test Data (Optional)
```bash
# Generate 500 dummy users for testing
cd neo4j
python test.py

docker exec -it matcha-neo4j bash
cypher-shell -u {neo4j_username} -p {neo4j_password} -f /docker-entrypoint-initdb.d/init_profiles.cypher
```

<br>



## 🌐 Services & Endpoints

| Service | URL | Description |
|---------|-----|-------------|
| 🎨 **Frontend** | `http://localhost` | Angular application |
| 🔌 **Backend API** | `http://localhost:8080/api` | Spring Boot REST API |
| 📊 **GraphQL** | `http://localhost:8080/api/graphql` | GraphQL playground |
| 🔵 **Neo4j Browser** | `http://localhost:7474` | Graph database UI |
| 🟢 **MongoDB** | `mongodb://localhost:27017` | Document database |
| 🗂️ **Mongo Express** | `http://localhost:8081` | MongoDB admin UI |

<br>


<br>

## 🔐 .env Template

Create a `.env` file with the following configuration:

```env
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🖥️  Server Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SERVER_PORT=8080
APP_URL=http://localhost
FRONTEND_URL=http://localhost

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔑 JWT Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
JWT_TYPE=Bearer
JWT_SECRET=your_super_secret_jwt_key_min_256_bits_recommended
JWT_EXPIRATIONMS_ACCESSTOKEN=3600000      # 1 hour
JWT_EXPIRATIONMS_REFRESHTOKEN=86400000    # 24 hours

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🍃 MongoDB Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SPRING_DATA_MONGODB_URI=mongodb://admin:password@mongodb:27017/matcha
SPRING_DATA_MONGODB_USERNAME=admin
SPRING_DATA_MONGODB_PASSWORD=password
ME_CONFIG_MONGODB_SERVER=mongodb

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔵 Neo4j Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SPRING_NEO4J_URI=bolt://neo4j:7687
SPRING_NEO4J_AUTHENTICATION_USERNAME=neo4j
SPRING_NEO4J_AUTHENTICATION_PASSWORD=your_neo4j_password

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 📧 Mail Server Configuration (Gmail Example)
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SMTP_MAIL_HOST=smtp.gmail.com
SPRING_MAIL_PORT=587
SPRING_MAIL_USERNAME=your_email@gmail.com
SPRING_MAIL_PASSWORD=your_app_password
SPRING_MAIL_PROTOCOL=smtp
SPRING_MAIL_PROPERTIES_MAIL_SMTP_AUTH=true
SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_ENABLE=true
SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_REQUIRED=true

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 📁 File Upload & GraphQL
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
FILE_UPLOAD_PATH=/uploads
GRAPHQL_PATH=/graphql
```

> ⚠️ **Security Note:** Never commit `.env` to version control. Keep your credentials safe!

<br><br>

## 🧪 Testing with Dummy Data

Generate 500 realistic test users with the included Python script:

```bash
cd neo4j
python test.py

# Access Neo4j container
docker exec -it matcha-neo4j bash
cypher-shell -u {neo4j_username} -p {neo4j_password} -f /docker-entrypoint-initdb.d/init_profiles.cypher
```


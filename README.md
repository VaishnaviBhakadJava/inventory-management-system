# Inventory Management System

A web-based Inventory Management System developed using Java, Servlets, JSP, JDBC, Oracle Database, HTML, and CSS.

The application provides separate functionalities for **Admin** and **Customer** users. Admins can manage products, while customers can register, log in, view available products, and purchase products.

This project was developed as part of my practical learning in **Core Java and Advanced Java** to gain hands-on experience in Java web application development, database connectivity, CRUD operations, authentication, and session management.

---

## 📌 Project Overview

The Inventory Management System is designed to provide a simple web-based platform for managing products and customer purchases.

The application consists of two main user roles:

- **Admin**
- **Customer**

The Admin is responsible for managing inventory, while Customers can register, authenticate themselves, view products, and purchase products.

---

## 👨‍💻 User Roles

### 🔑 Admin

The Admin can:

- Login
- Add new products
- View products
- Update existing products
- Delete products
- Logout

### 👤 Customer

The Customer can:

- Register
- Login
- View available products
- Buy products
- Logout

---

## ✨ Features

### 🔐 Authentication

- Admin login
- Customer registration
- Customer login
- Logout functionality

### 📦 Product Management

- Add product
- View products
- Update product
- Delete product

### 🛒 Customer Operations

- View available products
- Purchase products

### 🔒 Session Management

- Creates a session after successful login
- Maintains the logged-in user's session
- Restricts access to session-protected pages
- Invalidates the session during logout

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **Java** | Application development |
| **JDBC** | Database connectivity |
| **Servlets** | Request processing and application flow |
| **JSP** | Dynamic web pages |
| **HTML** | Web page structure |
| **CSS** | User interface styling |
| **Oracle Database** | Data storage |
| **Apache Tomcat** | Web application server |
| **Eclipse IDE** | Development environment |

---

## 🏗️ Project Architecture

The application follows a layered approach using JSP/HTML, Servlets, DAO classes, JDBC, and Oracle Database.

```text
                    Client
                      │
                      ▼
              HTML / JSP / CSS
                      │
                      ▼
                  Servlet
                      │
                      ▼
                     DAO
                      │
                      ▼
                    JDBC
                      │
                      ▼
              Oracle Database
```

### Main Components

**JSP / HTML / CSS**

Responsible for the presentation layer and user interface.

**Servlets**

Handle HTTP requests, process user actions, and control the application flow.

**DAO (Data Access Object)**

Handles database-related operations such as inserting, retrieving, updating, and deleting data.

**JDBC**

Provides connectivity between the Java application and Oracle Database.

**Oracle Database**

Stores application data such as customer, admin, and product information.

---

## 📂 Project Structure

```text
estore/
│
├── Java Resources
│   └── src/main/java/
│       │
│       └── com/
│           │
│           ├── bean/
│           │   ├── AdminBean.java
│           │   ├── CustomerBean.java
│           │   └── ProductBean.java
│           │
│           ├── dao/
│           │   ├── AddProductDAO.java
│           │   ├── AdminLoginDAO.java
│           │   ├── BuyProductDAO.java
│           │   ├── CustomerLoginDAO.java
│           │   ├── CustomerRegisterDAO.java
│           │   ├── DeleteProductDAO.java
│           │   ├── UpdateProductDAO.java
│           │   ├── ViewProductDAO.java
│           │   ├── DBConnect.java
│           │   └── DBInfoExample.java
│           │
│           └── servlet/
│               ├── AdminLoginServlet.java
│               ├── AddProductServlet.java
│               ├── BuyProductServlet.java
│               ├── CustomerLoginServlet.java
│               ├── CustomerRegisterServlet.java
│               ├── DeleteProductServlet.java
│               ├── UpdateProductServlet.java
│               └── LogoutServlet.java
│
├── src/main/webapp/
│   ├── HTML files
│   ├── JSP files
│   ├── CSS files
│   │
│   └── WEB-INF/
│       ├── web.xml
│       └── lib/
│           └── ojdbc17.jar
│
├── .gitignore
└── README.md
```

> **Note:** The actual project structure may contain additional files. The above structure highlights the main application components.

---

## 🗄️ Database

The application uses **Oracle Database** for persistent data storage.

JDBC is used to establish communication between the Java application and Oracle Database.

The application performs database operations such as:

- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`

The database stores information related to:

- Admin users
- Customers
- Products
- Product quantity and purchase-related data

### Database Connectivity

The project uses:

- Oracle JDBC Driver
- `DriverManager`
- `Connection`
- `PreparedStatement`
- `ResultSet`

---

## 🔐 Database Configuration

For security reasons, actual database credentials are **not included in this repository**.

The repository contains:

```text
DBInfoExample.java
```

which acts as a template for local database configuration.

### Local Configuration

After cloning the project:

1. Navigate to:

```text
src/main/java/com/dao/
```

2. Open `DBInfoExample.java`.

3. Create a local file named:

```text
DBInfo.java
```

4. Configure it using your own Oracle database credentials.

Example:

```java
package com.dao;

public interface DBInfo {

    String driver = "oracle.jdbc.OracleDriver";

    String dbUrl = "jdbc:oracle:thin:@localhost:1521:free";

    String dbUname = "YOUR_USERNAME";

    String dbPass = "YOUR_PASSWORD";
}
```

5. Make sure the required Oracle database and tables are available.

> **Important:** `DBInfo.java` is intentionally excluded from GitHub using `.gitignore` because it contains local database credentials.

---

## 🔒 Security and Session Management

The application uses HTTP sessions to maintain the login state of Admin and Customer users.

### Session Handling

- A session is created after successful login.
- User information is stored in the session.
- Protected pages can verify whether a valid session exists.
- Logout invalidates the active session.
- Session-protected functionality is restricted to authenticated users.

### Database Query Handling

The application uses `PreparedStatement` for database operations instead of directly constructing SQL queries with user input.

---

## 🚀 How to Run the Project

### Prerequisites

Install the following:

- Java JDK
- Eclipse IDE
- Apache Tomcat
- Oracle Database
- Oracle JDBC Driver

### Setup Steps

1. Clone the repository:

```bash
git clone https://github.com/VaishnaviBhakadJava/inventory-management-system.git
```

2. Import the project into Eclipse as a **Dynamic Web Project**.

3. Configure **Apache Tomcat** in Eclipse.

4. Configure the Oracle Database.

5. Create the required database tables.

6. Navigate to:

```text
src/main/java/com/dao/
```

7. Create `DBInfo.java` using `DBInfoExample.java` as a reference.

8. Add your local Oracle username and password to `DBInfo.java`.

9. Make sure the Oracle JDBC driver is available in the project.

10. Add the project to the Tomcat server.

11. Start the Tomcat server.

12. Open the application in a browser using the appropriate Tomcat URL.

---

## 📷 Screenshots

Screenshots of the application will be added here.

Planned screenshots include:

- Admin Login
- Admin Dashboard
- Add Product
- View Products
- Update/Delete Product
- Customer Registration
- Customer Login
- Customer Product View
- Buy Product

---

## 📚 What I Learned

Through this project, I gained practical experience in:

- Developing Java web applications
- Servlet request and response handling
- JSP development
- JDBC database connectivity
- Oracle SQL
- DAO-based database operations
- CRUD operations
- `PreparedStatement`
- User authentication
- HTTP session management
- Login and logout functionality
- Connecting frontend pages with backend Java components
- Organizing Java code using Bean, DAO, and Servlet packages
- Deploying web applications using Apache Tomcat
- Managing source code using Git and GitHub
- Protecting database credentials using `.gitignore`

---

## 🔮 Future Enhancements

The following features can be added in future versions:

- Product search and filtering
- Improved input validation
- Role-based authorization
- Customer order history
- Improved inventory and stock management
- Responsive user interface
- Better exception handling and error pages
- Migration to Spring Boot
- Development of RESTful APIs using Spring Boot
- JPA/Hibernate integration
- React-based frontend

---

## 👩‍💻 Developer

**Vaishnavi Bhakad**

Aspiring Java Full Stack Developer

---

## ⭐ Project

If you find this project useful or interesting, feel free to explore the repository and provide feedback.
# Inventory Management System

## 📌 Project Overview

The Inventory Management System is a web-based application developed using Java technologies to manage products and customer purchases.

The application provides separate functionalities for Admin and Customer users. Admins can manage products, while customers can register, log in, view available products, and purchase products.

The project was developed to apply concepts learned in Core Java and Advanced Java, including Servlets, JSP, JDBC, session management, and Oracle database connectivity.

---

## 👨‍💻 User Roles

### Admin

The Admin can:

- Login
- Add new products
- Update existing products
- Delete products
- View products
- Logout

### Customer

The Customer can:

- Register
- Login
- View available products
- Buy products
- Logout

---

## ✨ Features

### Authentication

- Admin login
- Customer registration
- Customer login
- Logout functionality

### Product Management

- Add product
- View products
- Update product
- Delete product

### Customer Operations

- View available products
- Purchase products

### Session Management

- Maintains user session after successful login
- Restricts access to pages based on login/session status
- Provides logout functionality to invalidate the session

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Java | Application development |
| JDBC | Database connectivity |
| Servlets | Request processing and business flow |
| JSP | Dynamic web pages |
| HTML | Page structure |
| CSS | Styling and user interface |
| Oracle | Database management |
| Apache Tomcat | Web application server |
| Eclipse | Development environment |

---

## 🏗️ Project Architecture

The application follows a layered approach using Servlets, DAO classes, JDBC, and Oracle.

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



### Database Configuration

The project uses Oracle Database for data storage.

For security reasons, the actual database credentials are not included in this repository.

The repository contains:

`DBInfoExample.java`

as a template.

After downloading/cloning the project:

1. Navigate to:
   `src/main/java/com/dao/`

2. Open `DBInfoExample.java`.

3. Create a new file named:
   `DBInfo.java`

4. Copy the structure from `DBInfoExample.java`.

5. Replace `YOUR_USERNAME` and `YOUR_PASSWORD` with your local Oracle credentials.

6. Make sure `DBInfo.java` is present in your local project but is not committed to GitHub.

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


## 🗄️ Database

The application uses Oracle Database for persistent data storage.

JDBC is used to establish a connection between the Java application and Oracle Database.

The application performs database operations such as:

- Insert
- Select
- Update
- Delete

The main data managed by the application includes:

- Admin information
- Customer information
- Product information
- Product quantity and purchase-related information

### Database Configuration

For security reasons, actual database credentials are not included in this repository.

`DBInfoExample.java` is provided as a template for configuring the database connection locally.

The actual `DBInfo.java` file is excluded from Git using `.gitignore`.


## 🔐 Security / Session Management

The application uses HTTP sessions to maintain the login state of Admin and Customer users.

### Session Management

- A session is created after successful login.
- User information is stored in the session.
- Session validation is used to restrict access to protected pages.
- Logout invalidates the active session.
- Users cannot access session-protected pages after logout.

Database operations use `PreparedStatement` for executing SQL queries.



## 🚀 How to Run the Project

### Prerequisites

Make sure the following are installed:

- JDK
- Eclipse IDE
- Apache Tomcat
- Oracle Database
- Oracle JDBC Driver

### Setup Steps

1. Clone or download this repository.

2. Import the project into Eclipse as a Dynamic Web Project.

3. Configure Apache Tomcat in Eclipse.

4. Configure the Oracle Database and create the required tables.

5. Navigate to:

   `src/main/java/com/dao/`

6. Create a local `DBInfo.java` file using `DBInfoExample.java` as a reference.

7. Add your local Oracle database username and password to `DBInfo.java`.

8. Make sure the Oracle JDBC driver is available in the project.

9. Add the project to the Tomcat server.

10. Start the Tomcat server.

11. Open the application in a browser using the appropriate Tomcat URL.



## 📷 Screenshots

Screenshots of the application will be added here.



## 📚 What I Learned

Through this project, I gained practical experience in:

- Developing Java web applications
- Servlet request and response handling
- JSP development
- JDBC database connectivity
- Oracle SQL
- DAO design and database operations
- CRUD operations
- PreparedStatement
- User authentication
- HTTP session management
- Login and logout functionality
- Deploying web applications using Apache Tomcat
- Organizing Java code using packages such as Bean, DAO, and Servlet
- Connecting frontend pages with backend Java components



## 🔮 Future Enhancements

The following features can be added in future versions:

- Product search and filtering
- Improved input validation
- Role-based authorization
- Customer order history
- Improved inventory and stock management
- Responsive user interface
- Better exception handling and error pages
- Migration from JSP/Servlet architecture to Spring Boot
- RESTful APIs using Spring Boot
- JPA/Hibernate for database operations
- React-based frontend


## 👩‍💻 Developer

**Vaishnavi Bhakad**

Aspiring Java Full Stack Developer
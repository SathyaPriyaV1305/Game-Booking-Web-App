🎮 Game Booking Web Application – javaProDemo1
--------------------------------------------------
This is a Java-based full-stack web application designed to manage the booking of game consoles, user memberships, and payments. It provides separate functionalities for users and administrators through a dynamic web interface built using JSP, Servlets, and Spring Data JPA.

✅ Project Features
For Users:
--------------------------------------------------
Register/Login: Users can create accounts or log into the system.

Browse Consoles: View available game consoles and their details (type, price, availability).

Book Consoles: Users can select a console, book it, and pay.

Membership Plans: View and subscribe to membership plans.

Booking History: View all previous bookings and payments.

For Admins:
---------------------------------------------------
Dashboard Access: Admins log in through a separate panel.

Console Management: Add, edit, delete, and list game consoles.

Membership Control: Create and manage membership plans.

Booking Oversight: View user bookings and membership subscribers.


🛠 Tools & Technologies Used
---------------------------------------------------
Layer	Technology
Language	Java
Frontend	JSP, HTML, CSS
Backend	Servlet, Spring Framework
ORM	JPA (Java Persistence API)
Build Tool	Maven
Database	MySQL
Server	Apache Tomcat
IDE	Eclipse (Maven-based project)

🔄 Project Structure
--------------------------------------------------
bash
Copy
Edit
src/
├── controller/       # Handles HTTP requests (Servlet-style controllers)
├── model/            # Java POJOs representing data (Console, UserBooking, Membership)
├── repository/       # Interfaces for DB access using JPA
├── service/          # Business logic and interaction between controller/repo
└── webapp/
    ├── WEB-INF/
    │   └── views/    # JSP pages (frontend UI)
    
📘 Detailed Working
👤 User Flow:
------------------------------------------------
User registers or logs in through the login page.

Once authenticated, they're redirected to a dashboard.

From here, they can:

Browse available game consoles.

Book a console (which involves selecting and confirming the booking).

View booking history.

Subscribe to membership plans for benefits.

🧑‍💼 Admin Flow:
-------------------------------------------------
Admin logs in to access the admin dashboard.

Admin can:

Add, edit, or delete console entries.

Manage all membership plans.

View a list of all user bookings and registered members.

🔁 Backend Logic:
-------------------------------------------------
Controllers (e.g., BookingController, ConsoleController) handle all user/admin actions.

Service classes carry out business logic and communicate with repositories.

Repositories use Spring Data JPA to interact with the MySQL database.

JSP pages serve as views for both users and admins.

🧠 System Architecture (MVC)
--------------------------------------------------
Model: Java classes that represent real-world entities like User, Booking, Console, and Membership.

View: JSP pages that show data to users/admins and collect inputs.

Controller: Java classes that control the flow of data between the model and the view.

This architecture ensures separation of concerns, making the app maintainable and scalable.

💾 Database Design 
------------------------------------------------
users: Stores user login info

consoles: Stores available game consoles

bookings: Stores bookings made by users

memberships: Stores membership plans

user_memberships: Links users with memberships

🚀 How to Run the project
--------------------------------------------
Clone the repository

Import into Eclipse as a Maven project

Set up MySQL database

Create schema

Update persistence.xml with DB credentials

Deploy on Apache Tomcat

Access via browser
http://localhost:8080/game

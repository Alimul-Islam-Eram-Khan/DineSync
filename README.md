# 🍽️ Online Restaurant Table Booking System-Dinesync

A simple and complete **Online Restaurant Table Booking System** developed using **PHP and MySQL**.

The system provides separate interfaces for **Customers** and **Restaurants/Admins**. Customers can register, search for restaurants, explore menus, check available tables, and make table reservations. Restaurants can manage their tables, meals, bookings, and restaurant information through a dedicated admin panel.

After a restaurant accepts a booking, the customer receives a **confirmation email**.

---

## 🌐 Demo

🎥 **Project Demo:**
https://youtu.be/EabhAZR9k0I

---

## ✨ Features

### 👤 Customer Side

* Customer registration and login
* Secure customer authentication
* Search restaurants by:

  * Area
  * Food type
* View restaurant details
* View available meals/menu
* View restaurant information
* Book restaurant tables
* Manage bookings
* View booking status
* Receive booking confirmation via email
* Update personal information
* Manage account details

### 🏪 Restaurant / Admin Panel

* Restaurant registration and login
* Dedicated restaurant dashboard
* Manage restaurant profile
* Manage restaurant information
* Add, edit and delete meals
* Manage restaurant menu
* Add and manage tables
* Update table availability
* View customer bookings
* Accept or reject bookings
* Manage booking information
* Send booking confirmation emails

---

## 🛠️ Technologies Used

| Technology       | Purpose                           |
| ---------------- | --------------------------------- |
| **PHP**          | Backend development               |
| **MySQL**        | Database management               |
| **HTML5**        | Page structure                    |
| **CSS3**         | Styling                           |
| **Bootstrap**    | Responsive UI                     |
| **JavaScript**   | Client-side functionality         |
| **jQuery**       | DOM manipulation and interactions |
| **SweetAlert**   | User-friendly alerts              |
| **Font Awesome** | Icons                             |
| **PHPMailer**    | Email notifications               |
| **SQL**          | Database queries                  |

---

## 🏗️ System Architecture

The application consists of two major parts:

```text
                 ONLINE RESTAURANT
                  BOOKING SYSTEM
                        │
             ┌──────────┴──────────┐
             │                     │
        👤 Customer            🏪 Restaurant
             │                     │
       ┌─────┴─────┐        ┌──────┴──────┐
       │            │        │             │
    Register      Login    Login       Dashboard
       │            │        │             │
       └──────┬─────┘        ├─ Manage Tables
              │              ├─ Manage Meals
       Search Restaurant     ├─ Manage Bookings
              │              ├─ Restaurant Profile
       View Restaurant       └─ Availability
              │
       View Menu / Meals
              │
       Check Tables
              │
       Book a Table
              │
       Booking Accepted
              │
       📧 Confirmation Email
```

---

## 🔄 Booking Workflow

```text
Customer Registration
        ↓
Customer Login
        ↓
Search Restaurant
        ↓
Select Restaurant
        ↓
View Menu & Tables
        ↓
Choose Available Table
        ↓
Submit Booking
        ↓
Restaurant Receives Booking
        ↓
Restaurant Accepts / Rejects
        ↓
If Accepted
        ↓
📧 Confirmation Email
```

---

## 🗄️ Database

The project uses **MySQL** as its database system.

The SQL database file is included with the project and can be imported into **phpMyAdmin**.

### Database Setup

1. Open **phpMyAdmin**.
2. Create a new database.
3. Import the project's `.sql` database file.
4. Configure the database connection in the project.
5. Make sure the following database credentials match your local MySQL setup:

```php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "your_database_name";
```

> Replace `your_database_name` with the actual database name used by your project.

---

## 💻 Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/your-repository-name.git
```

### 2. Move the Project

If you are using **XAMPP**, place the project inside:

```text
C:\xampp\htdocs\
```

For example:

```text
C:\xampp\htdocs\restaurant-booking\
```

### 3. Start XAMPP

Open XAMPP Control Panel and start:

```text
Apache
MySQL
```

### 4. Create the Database

Open:

```text
http://localhost/phpmyadmin
```

Create a new MySQL database and import the provided `.sql` file.

### 5. Configure Database Connection

Find the project's database configuration file and update:

```php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "your_database_name";
```

according to your local MySQL configuration.

### 6. Run the Project

Open your browser and visit:

```text
http://localhost/restaurant-booking/
```

---

## 📧 Email Configuration

The project uses **PHPMailer** to send booking confirmation emails.

After a restaurant accepts a customer's booking, the system can send a confirmation email to the registered customer.

You may need to configure your SMTP credentials in the PHPMailer configuration.

Example:

```php
$mail->isSMTP();
$mail->Host       = 'smtp.gmail.com';
$mail->SMTPAuth   = true;
$mail->Username   = 'your-email@gmail.com';
$mail->Password   = 'your-app-password';
$mail->SMTPSecure = 'tls';
$mail->Port       = 587;
```

> For Gmail SMTP, use a **Google App Password** rather than your normal Gmail password.

---

## 📸 Screenshots

Add your project screenshots here.

Example:

```markdown
## 📸 Screenshots

### 🏠 Home Page

![Home Page](images/home.png)

### 🔐 Login Page

![Login Page](images/login.png)

### 🍽️ Restaurant Page

![Restaurant Page](images/restaurant.png)

### 📅 Table Booking

![Table Booking](images/booking.png)

### 🏪 Restaurant Dashboard

![Restaurant Dashboard](images/admin-dashboard.png)
```

> Make sure the image filename and extension exactly match the files inside your repository.

---

## 📁 Project Structure

The structure may vary depending on the final version of the project, but the application generally contains:

```text
Restaurant-Booking/
│
├── admin/
│   ├── dashboard
│   ├── bookings
│   ├── meals
│   ├── tables
│   └── profile
│
├── customer/
│   ├── login
│   ├── register
│   ├── restaurants
│   ├── booking
│   └── profile
│
├── css/
│
├── js/
│
├── images/
│
├── includes/
│
├── PHPMailer/
│
├── database/
│   └── database.sql
│
└── index.php
```

---

## 👥 User Roles

### Customer

Customers can:

* Create an account
* Log in
* Search restaurants
* Browse menus
* Check table availability
* Book tables
* Track bookings
* Receive booking confirmations
* Update their account information

### Restaurant

Restaurants can:

* Register their restaurant
* Log in to their dashboard
* Manage restaurant information
* Manage tables
* Manage table availability
* Manage meals and menus
* View customer bookings
* Accept or reject bookings
* Send confirmation notifications

---

## 🔔 Notifications

The system uses **SweetAlert** to provide interactive notifications for actions such as:

* Successful registration
* Login errors
* Booking confirmation
* Booking cancellation
* Data updates
* Successful deletion
* Validation errors

---

## 🎨 UI & Components

The project uses:

* **Bootstrap** for responsive layouts
* **Font Awesome** for icons
* **jQuery** for interactive functionality
* **SweetAlert** for modern alert messages

The interface is designed to provide a simple and user-friendly restaurant booking experience.

---

## 🔐 Security Considerations

For production deployment, the following security practices are recommended:

* Hash user passwords using `password_hash()`
* Verify passwords using `password_verify()`
* Use prepared SQL statements
* Validate and sanitize user input
* Protect admin routes with authentication
* Store SMTP credentials securely
* Use environment variables for sensitive credentials
* Enable HTTPS in production
* Implement CSRF protection for forms

---

## 🚀 Future Improvements

Possible improvements include:

* Online payment integration
* Restaurant ratings and reviews
* Google Maps integration
* Real-time table availability
* SMS booking notifications
* Advanced restaurant filtering
* Customer booking history
* QR-code based reservations
* Restaurant analytics dashboard
* Role-based access control
* REST API integration
* Cloud deployment
* Docker support

---

## 📚 Learning Objectives

This project demonstrates practical experience with:

* PHP web development
* MySQL database design
* CRUD operations
* Authentication systems
* Session management
* Restaurant management systems
* Table reservation workflows
* Email integration using PHPMailer
* Responsive web design
* JavaScript and jQuery
* Bootstrap
* SQL database integration

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome.

If you would like to contribute:

```bash
# Fork the repository

# Clone your fork
git clone https://github.com/Alimul-Islam-Eram-Khan/DineSync.git

# Create a new branch
git checkout -b feature/new-feature

# Commit your changes
git commit -m "Add new feature"

# Push the branch
git push origin feature/new-feature
```

Then open a Pull Request.

---

## 📄 License

This project is intended for **educational and demonstration purposes**.

You are free to modify and improve the project according to your requirements.

---

## 👨‍💻 Author

**Alimul Islam Eram Khan**

🎓 Computer Science & Engineering
📍 Dhaka, Bangladesh

---

⭐ If you found this project useful, consider giving the repository a **star**!

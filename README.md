# Event Booking System

This repository contains the codebase for the Event Booking System, a platform for managing events, user registrations, and ticket bookings.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [API Endpoints](#api-endpoints)
- [Database Design](#database-design)

## Prerequisites

- **Ruby Version**: Ensure you have the required Ruby version(3.2.0) installed.
- **System Dependencies**: Install necessary dependencies such as Rails(8.0.2), PostgreSQL, redis-server.

## Getting Started

1. Clone the repository:
   ```bash
   git clone git@github.com:at9596/event_booking_system.git
   cd event_booking_system
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Start the server:
   ```bash
   rails server
   ```

## API Endpoints

### User APIs
- **Register User**  
  ![image](https://github.com/user-attachments/assets/c8d5bc67-f07d-44f3-875f-69a443666484)

- **Login User**  
  ![image](https://github.com/user-attachments/assets/bcd2c333-9d8a-4de7-a9be-771239b32c75)

### Event APIs
- **Event List**  
  ![image](https://github.com/user-attachments/assets/d1c814bd-0187-485e-bd0e-d8c6171dcf20)

- **Event Show**  
  ![image](https://github.com/user-attachments/assets/d2e3382f-fbd5-4c1e-85f9-10a4fde2fc95)

- **Update Event**  
  ![image](https://github.com/user-attachments/assets/3c05b626-92b2-49a5-93c4-fa782a6318d1)

- **Delete Event**  
  ![image](https://github.com/user-attachments/assets/b6d6419a-3d51-4bbb-a5dc-b4dbf13b7809)

- **Book Tickets**  
  ![image](https://github.com/user-attachments/assets/81cae8e7-6cdd-478c-9cfc-4863a536aea7)

## Database Design

The database schema is designed to support users, events, and ticket bookings.  
![image](https://github.com/user-attachments/assets/b15044a2-2012-4db9-ba3f-b31fcc187d6d)


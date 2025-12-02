## Prerequisites

- Install PostgreSQL on your system
- Create a database for the project

## Steps to Complete

### 1. Update Environment Variables

Update your `.env` file to use PostgreSQL instead of SQLite:

```
DATABASE_URL="postgresql://username:password@localhost:5432/your_database_name"
```

Replace `username`, `password`, and `your_database_name` with your actual PostgreSQL credentials.

### 2. Generate Prisma Client

Run the following command to regenerate the Prisma client for PostgreSQL:

```bash
npx prisma generate
```

### 3. Run Database Migration

Create and apply the database schema:

```bash
npm run migrate
```

### 4. Seed the Database

Populate the database with the default admin user:

```bash
npm run seed
```

### 5. Test the Login

Start the development server and test the login with:

- Email: admin@vuexy.com
- Password: admin

```bash
npm run dev
```

## Notes

- The password is stored in plain text for demo purposes. In production, implement proper password hashing (e.g., using bcrypt).
- Ensure your PostgreSQL server is running before running migrations.
- # If you encounter connection issues, verify your DATABASE_URL and PostgreSQL configuration.

# Switching to PostgreSQL for Authentication - COMPLETED ✅

## Prerequisites

- ✅ Install PostgreSQL on your system
- ✅ Create a database for the project

## Steps Completed

### 1. ✅ Update Environment Variables

Updated your `.env` file to use PostgreSQL instead of SQLite

### 2. ✅ Generate Prisma Client

Regenerated the Prisma client for PostgreSQL compatibility

### 3. ✅ Run Database Migration

Created and applied the database schema to PostgreSQL

### 4. ✅ Seed the Database

Populated the database with the default admin user

### 5. Test the Login

Your development server is running. Test the login with:

- Email: admin@vuexy.com
- Password: admin

Visit http://localhost:3000 and try logging in!

## Notes

- The password is stored in plain text for demo purposes. In production, implement proper password hashing (e.g., using bcrypt).
- Your PostgreSQL database is now fully integrated with the authentication system.
- Prisma is working smoothly with PostgreSQL for all database operations.

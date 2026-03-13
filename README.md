# Address Book System Database

A MySQL-based backend for an Address Book System. This project
demonstrates the evolution of a database from a single "flat" table to a
fully normalized structure using ER modeling and GitFlow methodology.

## 🛠 Project Overview

This project manages contact information including names, addresses, and
categorization (e.g., Family, Friends, Profession). It was built
following 13 Use Cases (UCs) to implement CRUD operations, data
retrieval, and advanced normalization.

### Key Features

-   **CRUD Operations**: Create, Read, Update, and Delete contacts.
-   **Data Retrieval**: Filter by City/State, sort alphabetically, and
    count by location.
-   **Advanced Normalization**: Refactored from one table into four
    related tables to eliminate data redundancy.
-   **Relationship Mapping**: Support for many-to-many relationships
    (one person belonging to multiple categories).

## 📂 Project Structure

``` text
AddressBookSystem-DB/
├── sql/               # SQL scripts for database setup and queries
│   ├── 99_reset_db.sql
│   ├── 01_uc1_schema.sql
│   ├── 02_uc2_insert_contacts.sql
│   └── 03_uc_queries.sql
├── proof/             # CSV exports of query results for each UC
├── docs/              # ER Diagrams and project documentation
└── .gitignore         # Prevents tracking of IDE and temporary files
```

## 🚀 Getting Started

### Prerequisites

-   MySQL Server and MySQL Workbench installed and configured.
-   Git installed and linked to your GitHub account.

### Workflow (Fixed Run Order)

To ensure the database is in the correct state, always execute the SQL
scripts in this specific order:

1.  `sql/99_reset_db.sql`: Deletes the existing database to start fresh.
2.  `sql/01_uc1_schema.sql`: Creates the normalized tables and
    structure.
3.  `sql/02_uc2_insert_contacts.sql`: Populates the tables with contact
    data.
4.  `sql/03_uc_queries.sql`: Runs functional logic (Joins, Sorting, and
    Counts).

## 📊 Database Design (ER Modeling)

The system was refactored into the following entities:

-   **Address Books**: Stores different address book containers.
-   **Contacts**: Core personal information.
-   **Contact Types**: Categorizations (Family, Friends, etc.).
-   **Type Mapping**: A bridge table to handle many-to-many
    relationships.

## 🛠 Built With

-   MySQL: Primary Database Management System.
-   MySQL Workbench: SQL Client and ER Modeling tool.
-   Git & GitFlow: Version control and branching strategy.

## 👤 Author

Manas Pratap Singh - BridgeLabz Assignment

------------------------------------------------------------------------


# Data Modeling and SQL Project Submission

`>` **KeepCoding Projects - Web 18:** 📁 [repos-kc-web-18.md](https://github.com/pablo-sch/pablo-sch/blob/main/docs/repos-kc-web-18.md)

`>` **Select your Language:** [Spanish](README.es.md) 🔄 [German](README.de.md)

<!-- ------------------------------------------------------------------------------------------- -->

## Project Objective

This project was created with the purpose of practicing and demonstrating the knowledge acquired in virtual classes about Data Modeling and SQL in a case that can be applied in everyday life.

The main objectives are to provide an IT solution through the design of a database for a problem that can occur in real life and to be able to apply the content taught in online classes effectively.

<!-- ------------------------------------------------------------------------------------------- -->

## Knowledge Learned and Worked On

- Use of **Databases**, **Data Modeling Diagrams**, and **SQL**.
- Identification of:
  - Entities and Relationships.
  - Attributes and Types.
  - Primary and Foreign Keys.
  - Cardinality I-II-III.
  - Normalization I-II-III-IV-V-VI-VII.
- **Creation**, **Modification**, **Deletion** of Tables.
- **Insertion** and **Extraction** of data from the Created Tables.

<!-- ------------------------------------------------------------------------------------------- -->

## Project Details

There is a Video Club that does not have the appropriate software to manage the business efficiently, so we are asked to create a new database based on the information provided by the client.

- It is necessary to register the **Members** who visit the Video Club. We need Name, Surnames, Date of Birth, Phone, and Identification Number.
- It is necessary to register the **Mailing Address** of the Members. We need Postal Code, Street, Number, and Floor. The Address is **optional** to register.
- It is necessary to register **Movies**. We need the Title, Genre, Director, and Synopsis of each. Additionally, each Movie can have more than one copy.
- It is necessary to know which Member has **Borrowed** each copy and when; that is, the date they took it and the return date. When a movie has no return date, it is considered borrowed.
- Additionally, it is necessary to query which movies are available to rent at this moment (those that are not borrowed). We need to know the movie title and the number of copies available.

<!-- ------------------------------------------------------------------------------------------- -->

## Technologies Used

- **SQL (PostgreSQL):** Standardized language for managing and manipulating relational databases.
- **draw.io:** Visual representation of the database.

<!-- ------------------------------------------------------------------------------------------- -->

## Installation and Usage Instructions

### 1. Software Requirements

- **[draw.io](https://app.diagrams.net)**
- **[DBeaver](https://dbeaver.io/)** (tested on version **25.0.0.202503021833**)

### 2. Repository Cloning

```bash
   git clone https://github.com/pablo-sch/keepcoding-03-sql-fundamentals.git
```

`>` **View Cloning Demo in VSCode:** 🎥 [Gif Demo](https://github.com/pablo-sch/pablo-sch/blob/main/etc/clone-tutorial.gif)

### 3. Opening Files

1. Open the file **"Diagrama Modelado de Datos VideoClub.drawio"** using **draw.io**.
2. Open the file **"Script SQL VideoClub.sql"** using **DBeaver** with a **PostgreSQL** database.

<!-- ------------------------------------------------------------------------------------------- -->

## Project Resources

### Project Preview

#### VideoClub

![VideoClub](../etc/preview_images/video_club.png)

<!-- ------------------------------------------------------------------------------------------- -->

## Contributions and Licensing

Project licensed under the MIT License. Free to use and distribute with attribution. External contributions are not accepted, but suggestions are welcome.

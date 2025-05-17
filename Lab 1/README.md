# Lab 1 – Entity-Relationship Modeling

## Overview
This lab focuses on building conceptual models using the Entity-Relationship (ER) diagram methodology. It includes two practical real-world problems. The first problem models the structure of a music company database, and the second focuses on managing property listings for a real estate firm.

---

## Problem 1: Musicana Records – Music Database

### Description
Musicana Records wants to create a database to manage information about:
- Musicians and the instruments they play
- Songs and their authors
- Albums produced by musicians and the songs included in each

### Identified Entities
- **Musician**
  - `Musician_ID` (PK), `Name`, `Phone`, `Address` (Street, City)

- **Instrument**
  - `Instrument_Name` (PK), `Musical_Key`

- **Song**
  - `Song_Title` (PK), `Author`

- **Album**
  - `Album_ID` (PK), `Title`, `Copyright_Date`

### Relationships
- **Plays**: M:N between Musician and Instrument
- **Performs**: M:N between Musician and Song
- **Includes**: 1:N from Album to Song
- **Produces**: 1:N from Musician to Album

---

## Problem 2: Real Estate Firm – Property Listings

### Description
A real estate agency manages sales offices, employees, properties for sale, and property ownership records. Each sales office is managed by one employee and may list multiple properties.

### Identified Entities
- **Sales_Office**
  - `Office_Number` (PK), `Location`

- **Employee**
  - `Employee_ID` (PK), `Employee_Name`

- **Property**
  - `Property_ID` (PK), `Address`, `City`, `State`, `Zip_Code`

- **Owner**
  - `Owner_ID` (PK), `Owner_Name`

### Relationships
- **Assigned_To**: 1:N from Sales_Office to Employee
- **Manages**: 1:1 between Sales_Office and Employee (manager)
- **Lists**: 1:N from Sales_Office to Property
- **Owns**: M:N between Owner and Property with an attribute: `Percent_Owned`

---

## Assumptions
- Each musician produces albums, plays instruments, and performs songs.
- Albums are produced by a single musician.
- Songs are linked to a single album.
- A property is listed by only one office but can have multiple owners.
- Manager is an employee who also works at that office.
- Percentages of ownership across owners for each property must sum to 100%.

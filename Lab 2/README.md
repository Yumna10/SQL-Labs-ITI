# Lab 2 – Entity-Relationship Modeling (Advanced Scenarios)

## Overview
This lab involves the creation of Entity-Relationship (ER) diagrams for two complex organizational systems: a **General Hospital** and an **Airline Management System**. The objective is to analyze, extract, and model all required entities, attributes, and relationships for database design.

---

## Problem 3: General Hospital Database System

### Description
A general hospital manages information about wards, patients, consultants, nurses, drugs, and medical activities such as drug administration.

### Identified Entities
- **Ward**
  - `Ward_ID` (PK), `Name`

- **Patient**
  - `Patient_ID` (PK), `Name`, `Date_Of_Birth`

- **Consultant**
  - `Consultant_ID` (PK), `Name`

- **Nurse**
  - `Nurse_ID` (PK), `Name`, `Number`, `Address`

- **Drug**
  - `Code` (PK), `Recommended_Dosage`, `Brand_Name` (Multi-valued attribute)

### Relationships
- **Hosts**: 1:N from Ward to Patient
- **Assigned_To**: 1:1 from Patient to Leading Consultant
- **Examines**: M:N between Consultant and Patient
- **Supervises**: 1:1 between Nurse and Ward
- **Serves**: 1:1 between Nurse and Ward
- **Administers**: Ternary relationship between Nurse, Patient, and Drug with attributes: `Dosage`, `Date_Time`

---

## Problem 4: Airline Companies Database System

### Description
This database supports operations of multiple airline companies managing employees, aircraft, routes, transactions, and crew assignments.

### Identified Entities
- **Airline**
  - `Airline_ID` (PK), `Name`, `Address`, `Contact_Person`, `Phone_Number`

- **Employee**
  - `Employee_ID` (PK), `Name`, `Address`, `Birth_Day`, `Birth_Month`, `Birth_Year`, `Gender`, `Position`, `Qualifications`

- **Aircraft**
  - `Aircraft_ID` (PK), `Model`, `Capacity`

- **Route**
  - `Route_ID` (PK), `Origin`, `Destination`, `Distance`, `Classification`

- **Transaction**
  - `Transaction_ID` (PK), `Date`, `Description`, `Amount`, `Type` (Buy/Sell)

- **Crew**
  - `Crew_ID` (PK), `Major_Pilot`, `Assistant_Pilot`, `Hostess1`, `Hostess2`

### Relationships
- **Owns**: 1:N from Airline to Aircraft
- **Assigned_To**: M:N between Aircraft and Route with attributes:
  - `Num_Passengers`, `Price_Per_Passenger`, `Departure_DateTime`, `Arrival_DateTime`, `Travel_Duration`
- **Employs**: 1:N from Airline to Employee
- **Assigned_Crew**: 1:1 between Crew and Aircraft
- **Performs**: 1:N from Airline to Transaction

---

## Assumptions
- Each patient has only one leading consultant but can be examined by many.
- Nurses are uniquely assigned to supervise one ward and serve there.
- Drugs may have multiple brand names.
- Each airline manages its own employees and aircraft.
- Routes may serve multiple aircraft and vice versa.
- Each aircraft has one dedicated crew.
- Transactions include both operational buys (e.g., maintenance) and sells (e.g., ticket sales).

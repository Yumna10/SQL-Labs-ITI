# Lab 3 - General Hospital E-R Diagram

## Problem Description

Design an E-R diagram for a general hospital system based on the following scenario:

### Requirements:

- The hospital consists of a number of specialized **wards**.  
  **Ward attributes:**  
  - `ward_id`  
  - `name`

- The system records the following details about **patients**:  
  - `patient_id`  
  - `name`  
  - `date_of_birth`

- Each **ward** may host one or more patients.  
  Each **patient** is hosted by **only one** ward.

- Each **patient** is assigned to **one leading consultant**, but may also be **examined by other consultants** as needed.

- Each **consultant** may:
  - Be assigned to **zero or more** patients  
  - Examine **zero or more** patients  
  **Consultant attributes:**  
  - `consultant_id`  
  - `name`

- The system must record all necessary data **each time a nurse gives a patient a certain drug**, including:
  - **Drug**
  - **Dosage**
  - **Date and time**

- Each **ward** is supervised by **one nurse**, and each **nurse** supervises **only one ward**.  
  Each **nurse** must serve in one ward.

  **Nurse attributes:**  
  - `nurse_name`  
  - `nurse_number`  
  - `address`

- **Drugs** are described by:  
  - `code_number`  
  - `recommended_dosage`  
  - Multiple `brand_names`

## Task

Design an **Entity-Relationship (E-R) diagram** that captures the structure and constraints of the hospital system. Be sure to:

- Define all entities and their attributes  
- Represent relationships, including cardinality and participation  
- Highlight any assumptions you make

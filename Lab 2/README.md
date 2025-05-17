# Lab 2 - Real Estate Firm E-R Diagram

## Problem Description

Prepare an E-R diagram for a real estate firm that lists properties for sale. The following describes this organization:

### Requirements:

- The firm has a number of sales offices in several states.  
  **Attributes of sales office:**  
  - Office_Number  
  - Location

- Each sales office is assigned one or more employees.  
  **Attributes of employee:**  
  - Employee_ID  
  - Employee_Name  
  - An employee must be assigned to only one sales office.

- For each sales office, there is always one employee assigned to manage that office.

- The firm lists properties for sale.  
  **Attributes of property:**  
  - Property_ID  
  - Location (includes Address, City, State, Zip_Code)

- Each property must be listed with one (and only one) sales office.  
  A sales office may have any number of properties listed or none.

- Each property may have zero or more owners.  
  **Attributes of owners:**  
  - Owner_ID  
  - Owner_Name  
  - The system stores the percent owned by each owner in each property.

## Task

Design an **Entity-Relationship (E-R) diagram** that captures the above information. Be sure to indicate:

- All entity sets and attributes  
- Relationship sets with cardinality constraints  
- Keys and participation constraints  
- Any assumptions you make

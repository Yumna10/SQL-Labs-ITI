# Lab 4 - Airline Company E-R Diagram

## Problem Description

Design an E-R diagram for a database system used by major airline companies that provide passenger services. The system should capture detailed information about airlines, employees, aircraft, routes, crews, and financial transactions.

### Requirements:

1. **Airline Information**  
   Each airline is described by:  
   - `airline_id`  
   - `name`  
   - `address`  
   - `contact_person`  
   - `telephone_numbers`

2. **Employee Information**  
   Each employee working for an airline has:  
   - `employee_id`  
   - `name`  
   - `address`  
   - `birthday` (day, month, year)  
   - `gender`  
   - `position`  
   - `qualifications`

3. **Aircraft Information**  
   Each airline owns multiple aircraft. Each aircraft has:  
   - `aircraft_id`  
   - `model`  
   - `capacity`

4. **Route Assignment**  
   Aircraft are assigned to routes, and a route may have many aircraft flying on it.  
   **Aircraft–Route relationship includes:**  
   - `number_of_passengers`  
   - `price_per_passenger`  
   - `departure_datetime`  
   - `arrival_datetime`  
   - `travel_duration`

   **Route attributes include:**  
   - `route_id`  
   - `origin`  
   - `destination`  
   - `distance`  
   - `classification` (e.g., domestic or international)

5. **Aircraft Crew**  
   Each aircraft has its own dedicated crew:  
   - `major_pilot`  
   - `assistant_pilot`  
   - `hostess_1`  
   - `hostess_2`

   > Note: Crew members are **not stored as employees** and each crew is assigned to **only one** aircraft.

6. **Transactions**  
   Airlines track financial transactions, including ticket sales (sell) and expenses like maintenance (buy).  
   **Transaction attributes:**  
   - `transaction_id`  
   - `date`  
   - `description`  
   - `amount`  
   - `type` (buy or sell)

## Task

Develop an **Entity-Relationship (E-R) diagram** that clearly represents the structure of this database. Make sure to:

- Define all entity types and their attributes  
- Identify relationships and cardinality constraints  
- Include all relevant data related to aircraft, routes, employees, and transactions  
- Clearly distinguish between employees and non-employee crew members  
- Document any assumptions made

# Lab 1 - Musicana Database Design

## Problem Description

Musicana records have decided to store information on musicians who perform on their albums in a database. The company has wisely chosen to hire you as a database designer.

### Requirements:
- Each musician that is recorded at Musicana has:
  - An ID number
  - A name
  - An address (street, city)
  - A phone number

- Each instrument that is used in songs recorded at Musicana has:
  - A unique name
  - A musical key (e.g., C, B-flat, E-flat)

- Each album that is recorded at the Musicana label has:
  - A unique title
  - A copyright date
  - An album identifier

- Each song recorded at Musicana has:
  - A unique title
  - An author

### Relationships:
- Each musician may play several instruments, and a given instrument may be played by several musicians.
- Each album has a number of songs on it, but no song may appear on more than one album.
- Each song is performed by one or more musicians, and a musician may perform a number of songs.
- Each album has exactly one musician who acts as its producer. A producer may produce several albums.

## Task
Design a **conceptual schema** for Musicana, indicating:
- All keys (primary and foreign)
- Cardinality constraints
- Any assumptions you make

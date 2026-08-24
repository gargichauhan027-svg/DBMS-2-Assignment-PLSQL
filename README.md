# DBMS-2 Assignment — PL/SQL

**Student Name:** Gargi Chauhan  
**Roll No.:** 06  
**Date of Birth:** 27-May-2008  
**Home City:** Ahmedabad  

## Repository Structure

```text
DBMS-2-Assignment-PLSQL/
├── README.md
├── Unit 1/
│   ├── P1.1.sql ... P1.23.sql
├── Unit 2/
│   ├── P2.1.sql ... P2.8.sql
└── Unit 3/
    ├── 00_schema_setup.sql
    ├── 06_S2Q1.sql ... 06_S2Q12.sql
    ├── 06_S3Q1.sql ... 06_S3Q12.sql
    └── 06_S4Q1.sql ... 06_S4Q6.sql
```

## Student Details
- **Name:** Gargi Chauhan
- **Roll No.:** 06
- **Date of Birth:** 27-May-2008
- **Home City:** Ahmedabad
- **Last-semester marks used in Unit 1 P1.2:** 420/500

## Unit 1
Contains the 23 supplied PL/SQL practical exercises covering anonymous blocks, variables, constants, NULL handling, NVL/NVL2, SELECT INTO, `%TYPE`, `%ROWTYPE`, arithmetic, nested blocks, string/date functions, BOOLEAN, aggregates, exception handling and formatted output.

## Unit 2
Contains the 8 supplied control-structure exercises covering IF/ELSIF, CASE, loops, salary/tax calculation, delivery billing, grading, prime-number processing, PIN validation and nested loops.

## Unit 3 — PL/SQL Cursors
Based on the supplied **PL/SQL Cursors - Practice Exercises** sheet. It covers:
- Library Management schema setup
- Simple (explicit) cursors
- Cursor FOR loops
- `%ROWCOUNT`, `%NOTFOUND`, `%FOUND`, `%ISOPEN`
- `SELECT ... FOR UPDATE` and `WHERE CURRENT OF`
- Parameterised cursors
- Default cursor parameters
- Nested/multiple cursors
- Trace, debug and short-answer cursor concepts

### Unit 3 Execution Order
1. Run `Unit 3/00_schema_setup.sql` first.
2. Run the Simple Cursor files (`06_S2Q1.sql` to `06_S2Q12.sql`).
3. Run the Parameterised Cursor files (`06_S3Q1.sql` to `06_S3Q12.sql`).
4. Run the Trace/Debug files (`06_S4Q1.sql` to `06_S4Q6.sql`).

All cursor programs use `SET SERVEROUTPUT ON;` and terminate anonymous PL/SQL blocks with `/`, as required by the supplied exercise sheet.

> **Note:** Unit 3's schema setup uses the exact library tables and sample data supplied in the exercise sheet. Run it before the cursor programs.

## Submission Notes
Each exercise is stored as a separate `.sql` file. The Unit 3 filenames include roll number `06` as required by the supplied sheet's submission naming convention.

**Submitted by:** Gargi Chauhan  
**Roll No.:** 06

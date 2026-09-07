# Experiment 6

Name: GURKIRAT SINGH

UID: 24BCS10337

## Aim

To demonstrate the creation and manipulation of database views in SQL, including creating views, querying views, and deleting records through views.

## Question

Write SQL queries to:
1. Create a view `EMP_VIEW_KRG_601A` that selects specific columns from the `EMPLOYEES` table
2. Query the created view to retrieve employee data
3. Delete records from the `EMPLOYEES` table through the view

## Concept

This experiment demonstrates:
- **CREATE VIEW**: Creating a logical table (view) based on a SELECT query
- **View Naming Convention**: Using descriptive names with prefixes (EMP_VIEW_KRG_601A)
- **WHERE Clause in Views**: Filtering data at view creation time
- **Querying Views**: Using SELECT on views like regular tables
- **DML Operations on Views**: Performing DELETE operations through views
- **View Advantages**: Views provide data abstraction and simplified access

## SQL Queries Used

### 1. Create View

```sql
CREATE VIEW EMP_VIEW_KRG_601A AS
SELECT EMP_ID, EMP_NAME FROM EMPLOYEES
WHERE EMP_ID = 101;
```

### 2. Query the View

```sql
SELECT * FROM EMP_VIEW_KRG_601A;
```

### 3. Delete from View

```sql
DELETE FROM EMP_VIEW_KRG_601A
WHERE EMP_ID = 101;
```

## Explanation

- **CREATE VIEW**: Creates a virtual table `EMP_VIEW_KRG_601A` that contains only the `EMP_ID` and `EMP_NAME` columns from the `EMPLOYEES` table where `EMP_ID = 101`
- **SELECT * FROM EMP_VIEW_KRG_601A**: Retrieves all rows from the view, which contains employee data matching the view's WHERE clause
- **DELETE FROM EMP_VIEW_KRG_601A**: Deletes the record with `EMP_ID = 101` from the underlying `EMPLOYEES` table through the view

## Expected Output

### Query Result (SELECT):
```text
EMP_ID | EMP_NAME
-------|----------
  101  | <Employee Name>
```

### Delete Operation:
Removes the employee record with EMP_ID = 101 from the EMPLOYEES table.

## Key Learning Points

- Views are virtual tables that don't store data themselves; they are based on underlying tables
- Views can be used for data abstraction and security by restricting which columns/rows are visible
- DML operations (INSERT, UPDATE, DELETE) can be performed on views (with certain restrictions)
- Views simplify complex queries by pre-filtering and pre-selecting data
- Views can be dropped using DROP VIEW command if no longer needed

## Result

The SQL queries successfully demonstrate view creation, querying, and manipulation through DML operations.

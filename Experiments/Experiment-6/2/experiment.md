# Experiment 6

Name: GURKIRAT SINGH

UID: 24BCS10337

## Aim

To demonstrate the creation and use of materialized views in SQL, including the difference between materialized views created WITH DATA and WITH NO DATA.

## Question

Write SQL queries to:
1. Create a materialized view `EMP_VIEW_KRG_601A_MV` with data from the `EMPLOYEES` table
2. Create another materialized view `EMP_VIEW_KRG_601A_MV2` without data
3. Query both materialized views to understand the difference

## Concept

This experiment demonstrates:
- **Materialized Views**: Physical copies of query results stored in the database
- **WITH DATA**: Creates the materialized view and populates it with data immediately
- **WITH NO DATA**: Creates the materialized view structure without populating data
- **View Refresh**: Materialized views store snapshots and may need refreshing
- **Performance**: Materialized views improve query performance but require storage space
- **Use Cases**: Useful for complex queries, data warehousing, and reporting

## SQL Queries Used

### 1. Create Materialized View WITH DATA

```sql
CREATE MATERIALIZED VIEW EMP_VIEW_KRG_601A_MV AS
    SELECT EMP_ID, EMP_NAME FROM EMPLOYEES
    WHERE emp_city = 'Delhi'
    WITH DATA;
```

### 2. Query First Materialized View

```sql
SELECT * FROM EMP_VIEW_KRG_601A_MV;
```

### 3. Create Materialized View WITH NO DATA

```sql
CREATE MATERIALIZED VIEW EMP_VIEW_KRG_601A_MV2 AS
    SELECT EMP_ID, EMP_NAME FROM EMPLOYEES
    WHERE emp_city = 'Delhi'
    WITH NO DATA;
```

### 4. Query Second Materialized View

```sql
SELECT * FROM EMP_VIEW_KRG_601A_MV2;
```

## Explanation

- **EMP_VIEW_KRG_601A_MV (WITH DATA)**: 
  - Creates a materialized view and immediately populates it with all employees from Delhi
  - The query result is physically stored in the database
  - SELECT query will return all matching records

- **EMP_VIEW_KRG_601A_MV2 (WITH NO DATA)**:
  - Creates the materialized view structure without populating any data
  - The view is defined but empty
  - SELECT query will return zero rows until data is refreshed using REFRESH MATERIALIZED VIEW

## Expected Output

### First Query (WITH DATA):
```text
EMP_ID | EMP_NAME
-------|----------
  101  | Employee1
  102  | Employee2
  ...  | ...
```

### Second Query (WITH NO DATA):
```text
EMP_ID | EMP_NAME
-------|----------
(No rows returned - the view is empty)
```

## Key Differences

| Feature | WITH DATA | WITH NO DATA |
|---------|-----------|--------------|
| Data Storage | Populated immediately | Empty initially |
| Query Result | Returns data | Returns no rows |
| Refresh Required | Can refresh later | Must refresh before use |
| Initial Populating | Happens during creation | Must be done with REFRESH MATERIALIZED VIEW |

## Key Learning Points

- Materialized views are physical copies of query results, unlike regular views which are virtual
- WITH DATA populates the view at creation time with the current data
- WITH NO DATA creates the view structure without data; useful when data loading will happen separately
- Materialized views improve query performance but consume storage space
- Data can become stale; use REFRESH MATERIALIZED VIEW to update
- Materialized views are useful for complex queries, reporting, and data warehousing

## Result

The SQL queries successfully demonstrate the creation of materialized views with different initialization options and show the differences in their behavior.

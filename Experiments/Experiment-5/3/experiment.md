# Experiment 5

Name: GURKIRAT SINGH

UID: 24BCS10337

## Aim

To demonstrate the use of conditional logic (IF-ELSIF-ELSE) statements in PostgreSQL PL/pgSQL blocks with RAISE NOTICE for displaying messages.

## Question

Write a PL/pgSQL block that declares an integer variable and uses conditional logic to display different messages based on the value of the variable.

## Concept

This experiment demonstrates:
- Declaration of variables in PL/pgSQL blocks
- Conditional logic using IF-ELSIF-ELSE statements
- RAISE NOTICE for displaying formatted output messages
- String formatting with % placeholder in RAISE NOTICE

## SQL Queries Used

### Conditional Logic with PL/pgSQL

```sql
DO $$
   DECLARE
   VAL INT:=4;
   BEGIN

   IF VAL>0 AND VAL<=10 THEN

   RAISE NOTICE 'YOUR VALUE IS % AND RANGE IS BETWEEN 1 TO 10',VAL;

   ELSIF VAL>10 AND VAL<=20 THEN
   RAISE NOTICE 'YOUR VALUE IS % AND VALUE IS GREATER THAN 20',VAL;

   ELSE
      RAISE NOTICE 'YOUR VALUE IS % AND VALUE IS GREATER THAN 20',VAL;

	  END IF;
   END;
   $$
```

## Explanation

- **DECLARE**: Declares the variable `VAL` and initializes it to `4`
- **IF-ELSIF-ELSE**: Checks multiple conditions:
  - If `VAL` is between 1 and 10, display the first message
  - Else if `VAL` is between 10 and 20, display the second message
  - Otherwise, display the third message
- **RAISE NOTICE**: Outputs a formatted message with the variable value using the `%` placeholder

## Output

```text
NOTICE: YOUR VALUE IS 4 AND RANGE IS BETWEEN 1 TO 10
```

## Result

The PL/pgSQL block successfully executes the conditional logic and displays the appropriate message based on the value of the variable. Since VAL=4, the first condition (VAL>0 AND VAL<=10) is true, so the first NOTICE message is displayed.

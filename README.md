# Organization Chart SQL Queries

Create the tables with the create_tables.sql file. 

Use cost_center_auth.sql to show a record for the cost center manager, as well as every org manager above the cost center manager. This can be useful for row level security when a cost center owner needs to see data, but also every user above that owner in the org needs to see the data.

Use all_empl_under_managers.sql to filter on a manager, showing every employee under them in the org regardless if employee is a direct report. This can be useful for grouping employees in reporting by a manager that is not the direct manager of an employee.

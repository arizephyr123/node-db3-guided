# Joins

A `foreign key` is a column (aka field or attribute) on a table that references the primary key on another table.

A way to link a row (aka record) in one table's primary key showing the relationship between the rows.

A foreign key is a column or group of columns in a relational database table that provides a link between data in 2 tables. It acts as a cross-reference between tables because it references the primary key of another table, thereby establishing a link between them.

## Application  Architecture

Opinion.

For an API we normally have (at least) three layers:

- routing (this is the `express` code, the endpoints, the middleware) -> routers, middleware.
- Data Access (the knex + SQLite||Postgres code) -> models.
- Business Logic(this makes your application unique) -> regular pre functions packed into a module.


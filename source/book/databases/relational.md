# Relational Databases
_____

### RDBMS 
- Relational database management system (RDBMS)
- A relational database like SQL is a collection of data items organized in tables.
- ACID is a set of properties of relational database transactions.
  - **Atomicity** - Each transaction is all or nothing
  - **Consistency** - Any transaction will bring the database from one valid state to another
  - **Isolation** - Executing transactions concurrently has the same results as
    if the transactions were executed serially 
  - **Durability** - Once a transaction has been committed, it will remain so

### Denormalization
- Denormalization attempts to improve read performance at the expense of some
  write performance. 
- Once data becomes distributed with techniques such as federation and
  sharding, managing joins across data centers further increases complexity.  
- Denormalization might circumvent the need for such complex joins.
- To avoid expensive joins, Denormalize where performance demands it.

**<span class="label label-warning">Disadvantages</span>**
- Data is duplicated.
- Constraints can help redundant copies of information stay in sync, which
  increases complexity of the database design.  
- A denormalized database under heavy write load might perform worse than its
  normalized counterpart. 
 

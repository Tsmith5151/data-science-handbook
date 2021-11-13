# NoSQL
____

### NoSQL Databases

- NoSQL is a collection of data items represented in a key-value store,
  document store, wide column store, or a graph database.
- Data is denormalized, and joins are generally done in the application code.
  Most NoSQL stores lack true ACID transactions and favor eventual consistency.
- BASE is often used to describe the properties of NoSQL databases:
- Basically available - the system guarantees availability.
- Soft state - the state of the system may change over time, even without
  input. 
- Eventual consistency - the system will become consistent over a period of
  time, given that the system doesn't receive input during that period. 

**Key-Value Store**
- Allows for O(1) reads and writes and is often backed by memory or SSD.
- Key-value stores can allow for storing of metadata with a value.
- Key-value stores provide high performance and are often used for simple data
  models or for rapidly-changing data, such as an in-memory cache layer. Since
  they offer only a limited set of operations, complexity is shifted to the
  application layer if additional operations are needed.
- A key-value store is the basis for more complex systems such as a document
  store, and in some cases, a graph database.

**Document Store**
- A document store is centered around documents (XML, JSON, binary, etc), where
  a document stores all  information for a given object. Document stores
  provide APIs or a query language to query based on the internal structure of
  the document itself. 
- Note, many key-value stores include features for working
  with a value's metadata, blurring the lines between these two storage types.
- Based on the underlying implementation, documents are organized by
  collections, tags, metadata, or directories. Although documents can be
  organized or grouped together, documents may have fields that are completely
  different from each other. 
- Some document stores like MongoDB and CouchDB also provide a SQL-like
  language to perform complex queries.  
- DynamoDB supports both key-values and documents.

### SQL vs NOSQL

**Reasons for SQL:**
- Structured data
- Strict schema
- Relational data
- Need for complex joins
- Transactions
- Clear patterns for scaling
- More established: developers, community, code, tools, etc
- Lookups by index are very fast

**Reasons for NoSQL:**
- Semi-structured data
- Dynamic or flexible schema
- Non-relational data
- No need for complex joins
- Store many TB (or PB) of data
- Very data intensive workload
- Very high throughput for IOPS

**Sample data well-suited for NoSQL:**
- Rapid ingest of clickstream and log data
- Leaderboard or scoring data
- Temporary data, such as a shopping cart
- Frequently accessed ('hot') tables
- Metadata/lookup tables

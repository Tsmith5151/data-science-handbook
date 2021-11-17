# Data Types
____

### JSON
- JSON stands for `JavaScript Object Notation`
- JSON is a lightweight format for storing and transporting data
- JSON is often used when data is sent from a server to a web page
- JSON is "self-describing" and easy to understand
- JSON is built on two structures:
- A collection of name/value pairs. In various languages, this is realized as
  an object, record, struct, dictionary, hash table, keyed list, or associative
  array. 
- An ordered list of values. In most languages, this is realized as an array,
  vector, list, or sequence. 

### YAML
- `Yet Another Markup Language`
- YAML is a digestible data serialization language that is often utilized to
  create configuration files and works in concurrence with any programming
  language. 
- YAML is a data serialization language designed for human interaction. It’s a
  strict superset of JSON, another data serialization language.  
- But because it’s a strict superset, it can do everything that JSON can and more.
- One major difference is that newlines and indentation actually mean something
  in YAML, as opposed to JSON, which uses brackets and braces. 

### Parquet
- Open-source columnar file format that provides I/O optimization such as data
  compression, which gives quick access to data columns for querying. 
- Columnar storage is designed to bring efficiency compared to row-based files
  like CSV. When querying, columnar storage you can skip over the non-relevant
  data very quickly.  
- With columnar storage, aggregation queries are less time consuming compared
  to row-oriented databases.   
- This way of storage has translated into hardware savings and minimized
  latency for accessing data.  


**<span class="label label-success">Advantages</span>**
- Parquet has helped reduce storage requirements by at least one-third
on large datasets, in addition, it greatly improved scan and deserialization
time which ultimately reduces the overall costs. 
- Parquet is a columnar file format, which means that it can be used to store
  data in a more efficient way than CSV.

### Dynamic Allocation
  - The Spark driver can request more or fewer compute resources as the demand
    of large workflows. If workflows vary in their demands for compute capacity
    then Dynamic Allocation could be an option (e.g. streaming data).  
  - **Example of settings:**
    - `spark.dynamicAllocation.enabled true`
    - `spark.dynamicAllocation.minExecutors 2`
- Must configure spark executors’ memory allocation
  - **Default**:
    - Execution memory: 60%
    - Storage memory: 40%
    - Reserved Memory 300 MB (safe-gaurd OOM)
  - The default settings work in most cases. - can be tricky to tune %
  - Storage memory is primarily for caching data structures/partitions from
    DataFrames. 


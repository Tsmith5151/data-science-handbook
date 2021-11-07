# Database Management
_____

## Traditional Databases
- Extremely expensive to scale out and do not support non-sql analytics well. 
- Works well for basic operational reporting of a limited number of records.

## Data Lakes
- Distributed file storage that scales horizontally. Limitations of Data Lakes

**Limitations**
- Atomicity and Isolation - processing engines write data in data lake as many files due to the distributed processing. If operations fails - then where is no way to roll back the files already written.
- `Consistency` - inconsistent tables users interact with due to the atomicity of writing data to the data lake. 

**Advantages**:
- Support for diverse workloads (batch,streaming)
- Supports diverse file formats
- Supports diverse file systems. 

## Delta
- Open-source data storage format that provides several solutions to limitations of traditional data lakes. 
- **Advantages:**
  - Delta stores a transaction log to keep track of all the commits made to the table directory to provide ACID transactions 
  - Also enables schema enforcement, by helping to avoid bad data getting your data lakes by providing the ability to specify the schema. 
  - Supports schema evolution like adding a new column.
  - Handles Unified Batch and Stream Processing.
- If we have a use-case of both Stream processing and Batch processing it is normal to follow Lambda Architecture.
  - Data coming in as Stream or any historical data you have is the same table being updated.

**Z-Ordering:**
- Technique to colocate related information in the same set of files. This co-locality is automatically used by Delta Lake on Databricks data-skipping algorithms to dramatically reduce the amount of data that needs to be read. 

**Compaction**: 
- A large number of small files should be rewritten into a smaller number of larger files on a regular basis

## Data Warehouse
- A database designed to store and process large volumes of current and historical data collected from multiple sources inside and outside the enterprise for deep analysis.
- Organizes data into tables and columns, and allows users access via SQL.
- Optimized for loading, integrating and analyzing very large amounts of data.
- Designed to support descriptive, diagnostic, predictive and prescriptive analytic workloads.
Example: Snowflake
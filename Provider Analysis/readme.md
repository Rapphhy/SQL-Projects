# Provider Analysis

### Query Name
`contribution across providers.sql`

**Description:**  
This SQL query analyzes transaction contributions from two providers: `Provider A` and `Provider B`. It aggregates the transaction count and total transaction value for each provider  The query provides insights into the performance and contributions of the providers.

## Query Details

### Key Components:
1. **Provider Mapping:**
   - Map transactions to the appropriate providers (`Provider A` with `app_id = 1` and `Provider B` with `app_id = 3`)

2. **Aggregations:**
   - `COUNT(*)`: Calculates the total number of transactions for each provider.
   - `SUM(amount)`: Calculates the total monetary value of transactions for each provider.

**Use Case:**  
This query helps to highlight strengths and areas for improvement for each provider, enabling businesses to identify underperforming providers and strategize on how to better engage their client base. This analysis can also uncover patterns and reasons why clients might prefer one provider over the other, paving the way for targeted engagement and optimization strategies to enhance overall performance. 

Welcome to my new dbt project!

### Modeling the Jaffle_shop data warehouse 

# 1 - Build first the datatbases : 
The databases are built on snowflake : 
- Raw database : that contain the raw data,  with 2 schemas : Jaffle_shop and stripe 
- Analytics : to contains the results of the transformation with DBT

# 2 - Modeling the data into DBT Studio
- A staging model : an intermediary step to pull the data from source, clean up and reference them to dimensions tables (e.g : orders, customers)
- A mart model : each mart contain data for a specific entity (e.g : marketing, finance)

# 3 - Test and deploy 
- Create generic (unique, not null, accepted_value) and specific test (check total payment is always a positive value) on sources and models 
- Create an deployment environment and run it at a schedule

# 4 - Documentation
Write a documentation with the help of co-pilot to describe any data (source, models, transformation) in the code. 


### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

# ElasticSearch VS. Clickhouse Query Test
compare query performance elastic and clickhouse

# How to

Start ES stack, in `elastic` directory, run `docker-compose up`.  [Kibana](http://localhost:5601) is running on port 5601.

Start Clickhouse stack, in `clickhouse` directory,  run `docker-compose up`.  [TabixUI](http://localhost:18080) is running on port 18080.  run sql script [init.sql](clickhouse/init.sql) to to create log table in clickhouse.

Start vector container by running `make start` in `vector` directory to generate [syslog](https://stackify.com/syslog-101/) data, and exported into ES and Clickhouse stack.  The data ingestion pipeline is defined in file [vector.toml](vector/vector.toml)

Run notebook in directory `notebook` by command `make run`, `make docker` is required to build the docker image first.  The [notebook](http://localhost:8888) can be accessed at port 8888.


# Reference

### Clickhouse Python SDK
https://github.com/mymarilyn/clickhouse-driver

### ES Python SDK
Python SDK https://elasticsearch-py.readthedocs.io/en/v7.11.0/

### About ES query DSL
1. https://www.slideshare.net/knoldus/query-dsl-in-elasticsearch?from_action=save
2. https://www.tutorialspoint.com/elasticsearch/elasticsearch_query_dsl.htm
3. https://hackernoon.com/how-to-master-elasticsearch-query-dsl-454632cg 






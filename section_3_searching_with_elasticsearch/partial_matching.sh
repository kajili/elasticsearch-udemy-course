curl -XPUT localhost:9200/movies/ -d '
{
    "mappings": 
    {
        "properties": 
        {
            "year": 
            {
                "type": "text"
            }
        }
    }
}'




curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"prefix": {
"year": "201"
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"wildcard": {
"year": "1*"
}
}
}'
curl -XGET 'localhost:9200/movies/_search?sort=year&pretty'


curl -XGET 'localhost:9200/movies/_search?sort=title&pretty'


curl -XPUT localhost:9200/movies/ -d '
{
    "mappings": 
    {
        "properties": 
        {
            "title": 
            {
                "type": "text",
                "fields": 
                {
                    "raw": 
                    {
                        "type": "keyword"
                    }
                }
            }
        }
    }
}'


curl -XGET 'localhost:9200/movies/_search?sort=title.raw&pretty'

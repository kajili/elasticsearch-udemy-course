curl -XGET "localhost:9200/movies/_search?q=+year:>1980+title:star%20wars&pretty"


curl -XGET "localhost:9200/movies/_search?q=%2Byear%3A%3E1980+%2Btitle%3Astar%20wars&pretty"


curl -XGET localhost:9200/movies/_search?pretty -d '
{
"query": {
"bool": {
"must": {"match_phrase": {"title": "Star Wars"}},
"filter": {"range": {"year": {"gte": 1980}}}
}
}
}'
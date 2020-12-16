# Search for science fiction movies before 1960, sorted by title.

curl -XGET 'localhost:9200/movies/_search?sort=title.raw&pretty' -d '
{
"query": {
"bool": {
"must": {"match": {"genre": "Sci-Fi"}},
"filter": {"range": {"year": {"lt": 1960}}}
}
}
}'
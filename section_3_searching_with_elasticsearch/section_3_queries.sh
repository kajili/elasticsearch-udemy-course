curl -XGET localhost:9200/movies/_search?pretty -d '
{
"query": {
"match": {
"title": "star wars"
}
}
}'


curl -XGET localhost:9200/movies/_search?pretty -d '
{
"query": {
"match_phrase": {
"title": "star wars"
}
}
}'



curl -XGET localhost:9200/movies/_search?pretty -d '
{
"query": {
"match_phrase": {
"title": {"query": "star beyond", "slop": 1}
}
}
}'


curl -XGET localhost:9200/movies/_search?pretty -d '
{
"query": {
"match_phrase": {
"title": {"query": "star beyond", "slop": 100}
}
}
}'
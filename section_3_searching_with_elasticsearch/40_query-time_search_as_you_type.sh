curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"match_phrase_prefix": {
"title": {
"query": "star",
"slop": 10
}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"match_phrase_prefix": {
"title": {
"query": "star tr",
"slop": 10
}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"match_phrase_prefix": {
"title": {
"query": "tr",
"slop": 10
}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"match_phrase_prefix": {
"title": {
"query": "star t",
"slop": 10
}
}
}
}'
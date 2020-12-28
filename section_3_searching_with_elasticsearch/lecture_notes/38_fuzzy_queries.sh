curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"match": {
"title": "intersteller"
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"fuzzy": {
"title": {"value": "intersteller", "fuzziness": 1}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"fuzzy": {
"title": {"value": "intursteller", "fuzziness": 1}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"fuzzy": {
"title": {"value": "intursteller", "fuzziness": 2}
}
}
}'



curl -XGET 'localhost:9200/movies/_search?pretty' -d '
{
"query": {
"fuzzy": {
"title": {"value": "warz", "fuzziness": 1}
}
}
}'
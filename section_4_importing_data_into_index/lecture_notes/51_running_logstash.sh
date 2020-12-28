cd /usr/share/logstash/

sudo bin/logstash -f /etc/logstash/conf.d/logstash.conf

curl -XGET 127.0.0.1:9200/_cat/indices?v
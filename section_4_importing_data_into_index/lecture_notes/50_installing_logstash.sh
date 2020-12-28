sudo apt install openjdk-8-jre-headless
sudo apt update
sudo apt install logstash


sudo subl /etc/logstash/conf.d/logstash.conf

input {
	file {
		path => "/home/kevinajili/access_log"
		start_position => "beginning"
	}
}

filter {
	grok {
		match => {"message" => "%{COMBINEDAPACHELOG}"}
	}
	date {
		match => ["timestamp", "dd/MMM/yyyy:HH:mm:ss Z"]
	}
}

output {
	elasticsearch {
		hosts => ["localhost:9200"]
	}
	stdout {
		codec => rubydebug
	}
}
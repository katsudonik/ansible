#service tomcat start
cd /usr/local/vc/elasticsearch_java_sample; git pull; gradle build
java -jar /usr/local/vc/elasticsearch_java_sample/build/libs/elasticsearch_java_sample-0.0.1-SNAPSHOT.jar


FROM openjdk:14-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/kafka_example-0.1.0-SNAPSHOT.jar kafka-example-in-scala.jar

ENTRYPOINT exec java $JAVA_OPTS -cp kafka-example-in-scala.jar

# java -cp kafka-example-in-scala.jar com.colobu.kafka.ScalaConsumerExample kafka:9092 group1 test_topic 10 0
# java -cp kafka-example-in-scala.jar com.colobu.kafka.ScalaProducerExample 10000 test_topic kafka:9092
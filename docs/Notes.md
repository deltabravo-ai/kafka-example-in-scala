Kafka can be accessed by consumers via port 9092 on the following DNS name from within your cluster:

```
kafka.default.svc.cluster.local
```

```
kubectl apply -f test-client-pod.yml
```

Once you have the testclient pod above running, you can attach to like so:

```
kubectl exec -it testclient -- sh
```

Once attached, to run the producer:

```
java -cp kafka-example-in-scala.jar com.colobu.kafka.ScalaProducerExample 10000 test_topic kafka.default.svc.cluster.local:9092
```

In a separate terminal, attach and run the consumer like so:

```
java -cp kafka-example-in-scala.jar com.colobu.kafka.ScalaConsumerExample kafka.default.svc.cluster.local:9092 group1 test_topic
```

Install via helm chart:

```
helm install my-app-name ./charts/kafka-example-in-scala
```

When you're done:

```
helm delete my-app-name
```

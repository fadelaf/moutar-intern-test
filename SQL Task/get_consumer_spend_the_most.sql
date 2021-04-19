SELECT name, max(transaction.amount) as max FROM consumer
INNER JOIN transaction
ON consumer.consumer_id = consumer_consumer_id;

package com.example.kafka.application;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class KafkaConsumer {
	
	@KafkaListener(topics= "Test3",groupId = "group_id")
	public void consumer(String message) 
	{
		System.out.println("message = " + message);
	}

}

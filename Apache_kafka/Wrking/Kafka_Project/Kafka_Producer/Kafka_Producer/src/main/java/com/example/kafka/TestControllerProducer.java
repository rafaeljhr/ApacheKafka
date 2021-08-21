package com.example.kafka;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestControllerProducer {

	@Autowired
	KafkaTemplate<String, String> kafkaTemplate;
	
	private static final String TOPIC = "Test3";
	
	@GetMapping("/publish/{message}")
	public String publishMessage(@PathVariable("message") final String message)
	{
		kafkaTemplate.send(TOPIC, message);
		return "Published sucessfully";
	}
}
	

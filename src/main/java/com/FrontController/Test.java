package com.FrontController;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Component;

@SpringBootApplication(scanBasePackages="com.Controller")
@EntityScan("com.Model")
@EnableJpaRepositories("com.Dao")
@ComponentScan("com")
public class Test
{
	
	public static void main(String[] args) 
	{
		System.out.println("hi");
		
		SpringApplication.run(Test.class);
		
		System.out.println("by");
			
	}
}


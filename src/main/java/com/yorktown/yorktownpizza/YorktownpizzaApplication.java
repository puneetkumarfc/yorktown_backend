package com.yorktown.yorktownpizza;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class YorktownpizzaApplication {

	public static void main(String[] args) {
		SpringApplication.run(YorktownpizzaApplication.class, args);
	}

}

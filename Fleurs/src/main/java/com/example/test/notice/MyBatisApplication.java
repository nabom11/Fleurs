package com.example.test.notice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.example.test.notice.mapper")
public class MyBatisApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyBatisApplication.class, args);
	}

}

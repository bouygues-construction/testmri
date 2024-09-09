package com.example.servingwebcontent.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class TestSecuController {

    @Value("${app.testString}")
    String testString;

    // Return a simple string
    @GetMapping("/hello")
    public String sayHello(){
        return "Hello, World!";
    }

    @GetMapping("/secret1")
    public String getSecret1(){
        return testString;
    }
}

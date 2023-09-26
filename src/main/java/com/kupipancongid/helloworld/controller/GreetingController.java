package com.kupipancongid.helloworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
    @GetMapping(path = "/")
    public String index(){
        return "Hello World! Welcome to our website.";
    }
    @GetMapping(path = "/hello")
    public String sayHello(
            @RequestParam("name") String name
    ){
        if (name.equals("")){
            return "Hello, guest.";
        }
        return "Hello, "+name;
    }
}

package com.example.testopenshiftspringboot.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class ControllerTest {


    @GetMapping()
    public String testRest(){
        System.out.printf("entrato nella get method");

        return "ciao";
    }
}

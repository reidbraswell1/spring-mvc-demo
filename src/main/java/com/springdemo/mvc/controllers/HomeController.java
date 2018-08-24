/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author reid
 */
// Define a controller class
@Controller
public class HomeController {
    
    // Define a controller method
    // Define request mapping
    @RequestMapping("/")
    public String showMethod() {
        System.out.println("HomeController: Inside Home Controller");
        return "main-menu";
    }
}

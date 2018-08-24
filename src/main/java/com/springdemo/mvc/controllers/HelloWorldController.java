/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author reid
 */
@Controller
@RequestMapping("hello")
public class HelloWorldController {
    
    // need a controller method to show the initial HTML form
    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }
    
    // need a controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld";
    }
    
    // new controller method to read form data amd
    // add data to the model
    
    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model) {
        
        // read the request parameter from the HTML form
        String theName = request.getParameter("studentName");
        
        // convert the data to all upper caps
        theName = theName.toUpperCase();
        
        // create the message
        String result = "Yo! " + theName;
        
        // add message to the model
        model.addAttribute("message", result);
        
        return "helloworld";    
    }
    @RequestMapping("/processFormVersionThree")
    public String letsShoutDude(@RequestParam("studentName") String theName, Model model) {
        
        // convert the data to all upper caps
        theName = theName.toUpperCase();
        
        // create the message
        String result = "Hey My Friend from v3! " + theName;
        
        // add message to the model
        model.addAttribute("message", result);
        
        return "helloworld";
        
    }
}

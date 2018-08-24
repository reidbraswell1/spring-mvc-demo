/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.controllers;

import com.springdemo.mvc.models.Customer;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author reid
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    
    @RequestMapping("/showForm")
    public String showForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer-form";
    }
    
    @RequestMapping("/processForm")
    public String processForm(
            @Valid @ModelAttribute("customer") Customer customer,
            BindingResult bindingResult) {
        
        if(bindingResult.hasErrors()) {
            System.out.println("Binding Result: " + bindingResult);
            return "customer-form";
        }
        else {
            return "customer-confirmation";
        }
    }
}

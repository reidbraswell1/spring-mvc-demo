/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.controllers;

import com.springdemo.mvc.models.Student;
import java.util.Map;
import java.util.TreeMap;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author reid
 */
@Controller
@RequestMapping("/student")
public class StudentController {
    
    @Value("#{countryOptions}") 
    private Map<String, String> countryOptions;
    
    @RequestMapping("/showForm")
    public String showForm(Model model) {
        
        // create a student object
        Student student = new Student();
        
        // add the student object to the model
        model.addAttribute("student", student);
        
        // add the country options to the model 
        model.addAttribute("theCountryOptions", new TreeMap<String,String>(countryOptions)); 
        return "student-form";
    }
    
    @RequestMapping("/processForm")
    public String processForm
        (@Valid @ModelAttribute("student") Student student,
         BindingResult result,
         Model model) {
        
        if(result.hasErrors()) {
            // add the country options to the model 
            model.addAttribute("theCountryOptions", new TreeMap<String,String>(countryOptions));
            System.out.println(result.toString());
            return "student-form";
        }
        else {
            return "student-confirmation";
        }
    }
}

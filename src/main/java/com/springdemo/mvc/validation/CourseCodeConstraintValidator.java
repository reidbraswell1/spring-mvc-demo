/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 *
 * @author reid
 */
public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode,String> {
    
    
    private String coursePrefix;
    
    @Override
    public void initialize(CourseCode courseCode) {
        System.out.println("Course Code: " + courseCode);
        coursePrefix = courseCode.value();
    }

    @Override
    public boolean isValid(String course, ConstraintValidatorContext context) {
        System.out.println("Course: " + course);
        if(course == null)
            return false;
        else
            return course.startsWith(coursePrefix);
    }
    
}

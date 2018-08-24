package com.springdemo.mvc.validation;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author reid
 */
@Constraint(validatedBy=CourseCodeConstraintValidator.class)
@Target( {ElementType.METHOD,ElementType.FIELD} )
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {
    // define default course code
    public String value() default "LUV";
    
    // define default error message
    public String message() default "Must start with LUV";

    // define default groups
    public Class<?>[] groups() default {} ;
    
    // define default payloads
    public Class<? extends Payload>[] payload() default {};
}

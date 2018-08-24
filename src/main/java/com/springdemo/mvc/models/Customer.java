package com.springdemo.mvc.models;


import com.springdemo.mvc.validation.CourseCode;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author reid
 */
public class Customer {
    
    @NotEmpty()
    @Size(min=1, message="min 1 character")
    private String firstName;
    
    @NotEmpty()
    @Size(min=1, message="min 1 character")
    private String lastName;
    
    @Min(value=0, message="must be greater than or equal to zero")
    @Max(value=10, message="must be less than or equal to 10")
    private int freePasses;
    
    @Pattern(regexp="^[a-z,A-Z,0-9]{5}", message="only 5 chars/digits")
    private String postalCode;
    
    @CourseCode
    private String courseCode;

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the freePasses
     */
    public int getFreePasses() {
        return freePasses;
    }

    /**
     * @param freePasses the freePasses to set
     */
    public void setFreePasses(int freePasses) {
        this.freePasses = freePasses;
    }

    /**
     * @return the postalCode
     */
    public String getPostalCode() {
        return postalCode;
    }

    /**
     * @param postalCode the postalCode to set
     */
    public void setPostalCode(String postalCode) {
        System.out.println("Postal Code: " + postalCode);
        this.postalCode = postalCode;
    }

    /**
     * @return the courseCode
     */
    public String getCourseCode() {
        return courseCode;
    }

    /**
     * @param courseCode the courseCode to set
     */
    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }
    
}

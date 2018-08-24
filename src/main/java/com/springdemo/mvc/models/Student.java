/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springdemo.mvc.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author reid
 */
public class Student {
    
    //@NotNull(message="First Name required")
    @NotEmpty(message="First Name required")
    @Length(min=2, message="At least 2 characters")
    private String firstName;
    
    //@NotNull(message="Last Name required")
    @NotEmpty(message="Last Name required")
    @Length(min=2, message="At least 2 characters")
    private String lastName;
    
    private String country;
    
    @NotEmpty(message="Favorite Language required")
    private String favoriteLanguage;
    
    @NotEmpty(message="Operating system required")
    private String[] operatingSystems;
    
    @NotNull(message="Date required")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date someDate;
    
    public Student() {
        // populate country options: used ISO country code
        /*
        countryOptions = new LinkedHashMap<>();
        
        countryOptions.put("BR","Brazil");
        countryOptions.put("FR","France");
        countryOptions.put("DE","Germany");
        countryOptions.put("IN","India");
        countryOptions.put("US","United States of America");
        */
    }

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
        System.out.println("FirstName: |" + firstName + "|");
        //this.firstName = firstName.trim().length() > 0 ? firstName.trim() : null;
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
        System.out.println("LastName: |" + lastName + "|");
        //this.lastName = lastName.trim().length() > 0 ? lastName.trim() : null;
        this.lastName = lastName;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the favoriteLanguage
     */
    public String getFavoriteLanguage() {
        return favoriteLanguage;
    }

    /**
     * @param favoriteLanguage the favoriteLanguage to set
     */
    public void setFavoriteLanguage(String favoriteLanguage) {
        this.favoriteLanguage = favoriteLanguage;
    }

    /**
     * @return the someDate
     */
    public Date getSomeDate() {
        return someDate;
    }
    
    public String getSomeDateString() {
        SimpleDateFormat df = new SimpleDateFormat("MM/dd/yyyy");
        return df.format(someDate);
    }

    /**
     * @param date the someDate to set
     */
    public void setSomeDate(Date date) {
        this.someDate = date;
        SimpleDateFormat df = new SimpleDateFormat("MM/dd/yyyy");
        System.out.println("Date: " + df.format(someDate));
    }

    /**
     * @return the operatingSystems
     */
    public String[] getOperatingSystems() {
        return operatingSystems;
    }

    /**
     * @param operatingSystems the operatingSystems to set
     */
    public void setOperatingSystems(String[] operatingSystems) {
        this.operatingSystems = operatingSystems;
    }

}

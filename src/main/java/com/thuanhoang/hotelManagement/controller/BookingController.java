/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */

@Controller
@RequestMapping("/booking")
public class BookingController {
    
    @GetMapping(value = "/checkAvailableRoom")
    public String showQuestionList(Model theModel){
        return "booking";
    }
    
    @GetMapping(value = "/searchForm")
    public String searchBookingForm(Model model) {
        return "searchBooking";
    }
    
    @GetMapping(value = "/search")
    public String searchBooking(Model model, @RequestParam("searchValue") String searchValue, @RequestParam("searchType") String searchType) {
        return "searchBooking";
    }
}

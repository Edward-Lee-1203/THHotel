/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.controller;

import com.thuanhoang.hotelManagement.entities.Reservation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    
    @GetMapping(value = "/trang_chu")
    public String addSearch(Model theModel){
        theModel.addAttribute("search", new Reservation());
        return "index";
    }
    
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.BookingDaoIF;
import com.thuanhoang.hotelManagement.entities.BookingEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */

@Service
public class BookingService {
    @Autowired
    BookingDaoIF bookingDao;
    
    public void saveBooking(BookingEntity booking) {
        bookingDao.save(booking);
    }
}
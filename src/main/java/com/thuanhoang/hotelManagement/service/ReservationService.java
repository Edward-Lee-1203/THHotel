/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.ReservationDaoIF;
import com.thuanhoang.hotelManagement.entities.Reservation;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class ReservationService {
    @Autowired
    ReservationDaoIF reservationDao;
    
    public void saveReser(Reservation reservation) {
        reservationDao.save(reservation);
    }
    
    public List<Reservation> getAllReser() {
        return (List<Reservation>) reservationDao.findAll();
    }
    
    public void deleteAllReser() {
        reservationDao.deleteAll();
    }
}   


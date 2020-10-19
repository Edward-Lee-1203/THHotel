/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.RoomTypeDaoIF;
import com.thuanhoang.hotelManagement.entities.RoomTypeEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */

@Service 
public class RoomTypeService {
    @Autowired
    RoomTypeDaoIF roomTypeDao;
    
    public List<RoomTypeEntity> getAllRoomType() {
        return (List<RoomTypeEntity>) roomTypeDao.findAll();
    }
    
    public RoomTypeEntity getRoomTypeById(int id) {
        return roomTypeDao.findById(id);
    }
}


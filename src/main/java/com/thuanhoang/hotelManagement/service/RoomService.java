/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.RoomDaoIF;
import com.thuanhoang.hotelManagement.entities.RoomEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */

@Service
public class RoomService {
    
    @Autowired RoomDaoIF roomDao;
    
    public List<RoomEntity> getAllListRoom() {
        List<RoomEntity> listRoom = (List<RoomEntity>) roomDao.findAll();
        return listRoom;
    }
    
    public RoomEntity findById(int id) {
        return roomDao.findById(id);
    }
   
    public void deleteRoomById(int id) {
        roomDao.deleteById(id);
    }
}

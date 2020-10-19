/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.BookingDetailDaoIF;
import com.thuanhoang.hotelManagement.entities.BookingDetailEntity;
import com.thuanhoang.hotelManagement.entities.Reservation;
import com.thuanhoang.hotelManagement.entities.RoomEntity;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class BookingDetailService {
    
    @Autowired 
    BookingDetailDaoIF bookingDetailDao;
    
    @Autowired 
    RoomService roomService;
    
    @Autowired
    ReservationService reservationService;
    
    public List<Integer> getNoneAvailableRoomId(Date timeIn, Date timeOut) {
        
        List<BookingDetailEntity> bookingDetailList = getBookingDetail();
        List<Reservation> reserList = reservationService.getAllReser();
        List<Integer> nonAvailableRoomIdList = new ArrayList<>();
        
        for (BookingDetailEntity bookingDetail : bookingDetailList) {
           if (timeIn.before(bookingDetail.getCheckoutDate()) && timeIn.after(bookingDetail.getCheckinDate())) {
               nonAvailableRoomIdList.add(bookingDetail.getRoomEntities().getId());
           }
           else if (timeOut.before(bookingDetail.getCheckoutDate()) && timeOut.after(bookingDetail.getCheckinDate())) {
               nonAvailableRoomIdList.add(bookingDetail.getRoomEntities().getId());
           }
           else if (bookingDetail.getCheckoutDate().before(timeOut) && bookingDetail.getCheckoutDate().after(timeIn)) {
               nonAvailableRoomIdList.add(bookingDetail.getRoomEntities().getId());
           }
        }  
        
        for (Reservation reser : reserList) {
           if (timeIn.before(reser.getCheckoutDate()) && timeIn.after(reser.getCheckinDate())) {
               nonAvailableRoomIdList.add(reser.getRoomEntity().getId());
           }
           else if (timeOut.before(reser.getCheckoutDate()) && timeOut.after(reser.getCheckinDate())) {
               nonAvailableRoomIdList.add(reser.getRoomEntity().getId());
           }
           else if (reser.getCheckoutDate().before(timeOut) && reser.getCheckoutDate().after(timeIn)) {
               nonAvailableRoomIdList.add(reser.getRoomEntity().getId());
           }
           else if (timeOut.compareTo(reser.getCheckoutDate()) == 0 || timeIn.compareTo(reser.getCheckinDate()) == 0) {
               nonAvailableRoomIdList.add(reser.getRoomEntity().getId());
           }
        }

        return nonAvailableRoomIdList;
    }
    
    public List<RoomEntity> getNoneAvailableRoom(Date timeIn, Date timeOut) {
        
        List<BookingDetailEntity> bookingDetailList = getBookingDetail();
        List<Reservation> reserList = reservationService.getAllReser();
        List<RoomEntity> nonAvailableRoom = new ArrayList<RoomEntity>();
        
        for (BookingDetailEntity bookingDetail : bookingDetailList) {
           if (timeIn.before(bookingDetail.getCheckoutDate()) && timeIn.after(bookingDetail.getCheckinDate())) {
               nonAvailableRoom.add(bookingDetail.getRoomEntities());
           }
           else if (timeOut.before(bookingDetail.getCheckoutDate()) && timeOut.after(bookingDetail.getCheckinDate())) {
               nonAvailableRoom.add(bookingDetail.getRoomEntities());
           }
           else if (bookingDetail.getCheckoutDate().before(timeOut) && bookingDetail.getCheckoutDate().after(timeIn)) {
               nonAvailableRoom.add(bookingDetail.getRoomEntities());
           }
           else if (timeOut.compareTo(bookingDetail.getCheckoutDate()) == 0 || timeIn.compareTo(bookingDetail.getCheckinDate()) == 0) {
               nonAvailableRoom.add(bookingDetail.getRoomEntities());
           }
        }  
        
        for (Reservation reser : reserList) {
           if (timeIn.before(reser.getCheckoutDate()) && timeIn.after(reser.getCheckinDate())) {
               nonAvailableRoom.add(reser.getRoomEntity());
           }
           else if (timeOut.before(reser.getCheckoutDate()) && timeOut.after(reser.getCheckinDate())) {
               nonAvailableRoom.add(reser.getRoomEntity());
           }
           else if (reser.getCheckoutDate().before(timeOut) && reser.getCheckoutDate().after(timeIn)) {
               nonAvailableRoom.add(reser.getRoomEntity());
           }
           else if (timeOut.compareTo(reser.getCheckoutDate()) == 0 || timeIn.compareTo(reser.getCheckinDate()) == 0) {
               nonAvailableRoom.add(reser.getRoomEntity());
           }
        }
    
        return nonAvailableRoom;
    }
    
    public List<BookingDetailEntity> getBookingDetail() {
        return (List<BookingDetailEntity>) bookingDetailDao.findAll();
    }
    
    public void saveBookingDetail(BookingDetailEntity bookingDetailEntity) {
        bookingDetailDao.save(bookingDetailEntity);
    }
    
}

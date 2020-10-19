/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.controller;

import com.thuanhoang.hotelManagement.entities.BookingDetailEntity;
import com.thuanhoang.hotelManagement.entities.BookingEntity;
import com.thuanhoang.hotelManagement.entities.CreditCardEntity;
import com.thuanhoang.hotelManagement.entities.CustomerEntity;
import com.thuanhoang.hotelManagement.entities.Reservation;
import com.thuanhoang.hotelManagement.entities.RoomEntity;
import com.thuanhoang.hotelManagement.entities.RoomTypeEntity;
import com.thuanhoang.hotelManagement.service.BookingDetailService;
import com.thuanhoang.hotelManagement.service.BookingService;
import com.thuanhoang.hotelManagement.service.CreditCardService;
import com.thuanhoang.hotelManagement.service.CustomerService;
import com.thuanhoang.hotelManagement.service.ReservationService;
import com.thuanhoang.hotelManagement.service.RoomService;
import com.thuanhoang.hotelManagement.service.RoomTypeService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
    
    @Autowired
    RoomService roomService;
    
    @Autowired
    BookingDetailService bookingDetailService;
    
    @Autowired
    RoomTypeService roomTypeService;
    
    @Autowired
    ReservationService reservationService;
    
    @Autowired
    CreditCardService creditCardService;
    
    @Autowired
    CustomerService customerService;
    
    @Autowired
    BookingService bookingService;
    
    @GetMapping(value ="/home")
    public String showIndexPage(){
        return "index";
    }
     
    @GetMapping(value ="/customerInfor")
    public String showCustomerInforPage(Model model, @RequestParam(defaultValue = "0") int check){
       
        
        CustomerEntity customer = new CustomerEntity();
        
        List<Reservation> reserList = reservationService.getAllReser();
        
        //xu ly tong tien cua reservation;
        int total = 0;
        for (Reservation reservation : reserList) {
            total = total + reservation.getPrice() + reservation.getPrice()*15/100;
        }
        //done
        
        model.addAttribute("total", total);
        model.addAttribute("check", check);
        model.addAttribute("customer", customer);
        model.addAttribute("reserList", reserList);
        return "customerInfor";
    }
    
    @RequestMapping(value = "/payment")
    public String confirmBooking(@ModelAttribute("customer") CustomerEntity customer, 
                                @RequestParam("amountOfMoney") int amountOfMoney,
                                @RequestParam("nameOnCard") String nameOnCard,
                                @RequestParam("password") String password,
                                Model model) {
        
        List<CreditCardEntity> creditList = creditCardService.getAllCreditCard();
        
        for (CreditCardEntity creditCardEntity : creditList) {
            Boolean check = true;
            if (password.equals(creditCardEntity.getType()) && nameOnCard.equals(creditCardEntity.getNameOnCard())) {
                break;
            } else {
                model.addAttribute("check", 1);
                return "redirect:/customer/customerInfor";
            }
        }
        
        Boolean checkPayment = creditCardService.depositMoney(amountOfMoney, customer.getCreditCard());
        
        if (!checkPayment) {
            model.addAttribute("check", 1);
            return "redirect:/customer/customerInfor"; 
        }
              
        customerService.saveCustomer(customer);
        
        BookingEntity booking = new BookingEntity(getAlphaNumericString(6), amountOfMoney);
        bookingService.saveBooking(booking);
        
        List<Reservation> reserList = reservationService.getAllReser();
        
        for (Reservation reservation : reserList) {
            BookingDetailEntity bookingDetailEntity = new BookingDetailEntity(reservation.getCheckinDate(), reservation.getCheckoutDate(), 0, 0, 0, reservation.getRoomEntity(), booking);
            bookingDetailService.saveBookingDetail(bookingDetailEntity);
        }
        
        reservationService.deleteAllReser();
        
        model.addAttribute("booking", booking);
        model.addAttribute("amountOfMoney", amountOfMoney);
        
        return "bookingSuccess";
    }
    
    @GetMapping(value = "/list")
    public String showQuestionList(@RequestParam("timeIn") String timeInStr,
                            @RequestParam("timeOut") String timeOutStr,
                            Model model){
        Date timeIn = stringToDate(timeInStr);
        Date timeOut = stringToDate(timeOutStr);
        
        List<RoomEntity> roomList = bookingDetailService.getNoneAvailableRoom(timeIn, timeOut);
        
        model.addAttribute("roomList", roomList);
        
        return "tesst";
    }
    
    @GetMapping(value = "/availableRoom")
    public String getAvailableRoom(@RequestParam("timeIn") String timeInStr,
                            @RequestParam("timeOut") String timeOutStr,
                            @RequestParam("numOfAdult") int numOfAdult,
                            @RequestParam("numOfChild") int numOfChild,
                            @RequestParam("numOfRoom") int numOfRoom,
                            Model model) {
        //xu ly date
        Date timeIn = stringToDate(timeInStr);
        Date timeOut = stringToDate(timeOutStr);
        //done
        
        //xu ly roomtype
        List<RoomEntity> noneAvailableRoom = bookingDetailService.getNoneAvailableRoom(timeIn, timeOut);     
        List<RoomTypeEntity> roomTypeList = roomTypeService.getAllRoomType();
        
        for (RoomEntity roomEntity : noneAvailableRoom) {
            for (RoomTypeEntity roomTypeEntity : roomTypeList) {
                if (roomEntity.getRoomTypeEntity().getId() == roomTypeEntity.getId()) {
                    roomTypeEntity.setAmountOfRoom(roomTypeEntity.getAmountOfRoom()- 1);
                }
            }
        }
       //done
        model.addAttribute("roomTypeList", roomTypeList);
        model.addAttribute("timeInStr", timeInStr);
        model.addAttribute("timeOutStr", timeOutStr);
        
        return "bookingCustomer";
        
    }

    @GetMapping(value = "/addRoom")
    public String addRoom(@RequestParam("timeInStr") String timeInStr,
                            @RequestParam("timeOutStr") String timeOutStr,
                            @RequestParam("price") int price,
                            @RequestParam("roomTypeId") int roomTypeId,                           
                            Model model) {
        
        //xu ly ngay thang
        Date timeIn = stringToDate(timeInStr);
        Date timeOut = stringToDate(timeOutStr);
        //done  
        
        //xu ly availableRoom
        List<Integer> nonAvailableRoomId = bookingDetailService.getNoneAvailableRoomId(timeIn, timeOut);
        List<RoomEntity> availableRoom = roomService.getAllListRoom();
        
        for (int i = 0; i < availableRoom.size(); i++) {
            for (Integer id : nonAvailableRoomId) {
                if (id != availableRoom.get(i).getId()) {
                    continue;
                } else {
                    availableRoom.remove(availableRoom.get(i));
                }
            }
        } 
        //done
              
        //add reservation
        if (roomTypeId != 0) {
            for (RoomEntity roomEntity : availableRoom) {
                if (roomEntity.getRoomTypeEntity().getId() == roomTypeId) {
                    Reservation reser = new Reservation(timeIn, timeOut, roomEntity, price);
                    reservationService.saveReser(reser);  
                    break;
                }
                
            }
        }
        
        List<Reservation> reserList = reservationService.getAllReser();
        //done
        
        //xu ly roomType
        List<RoomEntity> noneAvailableRoom = bookingDetailService.getNoneAvailableRoom(timeIn, timeOut);     
        List<RoomTypeEntity> roomTypeList = roomTypeService.getAllRoomType();
        
        for (RoomEntity roomEntity : noneAvailableRoom) {
            for (RoomTypeEntity roomTypeEntity : roomTypeList) {
                if (roomEntity.getRoomTypeEntity().getId() == roomTypeEntity.getId()) {
                    roomTypeEntity.setAmountOfRoom(roomTypeEntity.getAmountOfRoom()- 1);
                }
            }
        }
        //done

        //tinh tong tien trong don dat
        int total = 0;
        
        for (Reservation reservation : reserList) {
            total = total + reservation.getPrice() + reservation.getPrice()*15/100;
        }
        //done
        
        model.addAttribute("reserList", reserList);
        model.addAttribute("roomTypeList", roomTypeList);
        model.addAttribute("timeInStr", timeInStr);
        model.addAttribute("timeOutStr", timeOutStr);
        model.addAttribute("total", total);
        
        return "bookingCustomer";
        
    }
    //done
    
    //xu ly chuyen str thanh date
    public Date stringToDate(String timeInStr) {
        
        Date timeIn = java.sql.Date.valueOf(LocalDate.now());
        
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
            timeIn = formatter.parse(timeInStr);
        } catch (ParseException ex) {
            Logger.getLogger(CustomerController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return timeIn;
    }
    
    public String getAlphaNumericString(int n) 
    { 
  
        // chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(n); 
  
        for (int i = 0; i < n; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        return sb.toString(); 
    } 
    
}


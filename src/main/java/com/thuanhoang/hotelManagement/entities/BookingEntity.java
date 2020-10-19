package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;

@Entity
@Table(name = "booking")
public class BookingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String bookingCode;
    private int totalPrice;
    private int depositMoney;

    @OneToOne
    @JoinColumn(name = "customerId")
    private CustomerEntity customerEntity;

    @OneToOne
    @JoinColumn(name = "paymentId")
    private PaymentEntity paymentEntity;
    
    @OneToOne(mappedBy = "bookingEntity")
    private BookingDetailEntity bookingDetailEntity;

    public BookingEntity(String bookingCode, int depositMoney) {
        this.bookingCode = bookingCode;
        this.depositMoney = depositMoney;
    }

    public BookingEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookingCode() {
        return bookingCode;
    }

    public void setBookingCode(String bookingCode) {
        this.bookingCode = bookingCode;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getDepositMoney() {
        return depositMoney;
    }

    public void setDepositMoney(int depositMoney) {
        this.depositMoney = depositMoney;
    }
}

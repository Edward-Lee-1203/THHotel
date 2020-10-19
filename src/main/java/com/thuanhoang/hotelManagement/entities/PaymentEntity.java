package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "payment")
public class PaymentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int amount;
    
    private String paymentDate;
    
    private String paymentType;

    @OneToOne
    @JoinColumn(name = "creditCardId")
    private CreditCardEntity creditCardEntity;

    @OneToOne(mappedBy = "paymentEntity")
    private BookingEntity bookingEntity;

    public PaymentEntity(int id, int amount, String paymentDate, String paymentType) {
        this.id = id;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.paymentType = paymentType;
    }

    public PaymentEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }
}

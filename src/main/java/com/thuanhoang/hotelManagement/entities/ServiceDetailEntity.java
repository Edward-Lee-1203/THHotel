package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "service_detail")
public class ServiceDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String serviceBookingCustomer;
    private int quantity;
    
    @Column(name = "useDate", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date useDate;

    @ManyToOne
    @JoinColumn(name = "serviceId")
    private ServiceEntity serviceEntity;

    public ServiceDetailEntity(int id, String serviceBookingCustomer, int quantity, Date useDate) {
        this.id = id;
        this.serviceBookingCustomer = serviceBookingCustomer;
        this.quantity = quantity;
        this.useDate = useDate;
    }

    public ServiceDetailEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceBookingCustomer() {
        return serviceBookingCustomer;
    }

    public void setServiceBookingCustomer(String serviceBookingCustomer) {
        this.serviceBookingCustomer = serviceBookingCustomer;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getUseDate() {
        return useDate;
    }

    public void setUseDate(Date useDate) {
        this.useDate = useDate;
    }
}

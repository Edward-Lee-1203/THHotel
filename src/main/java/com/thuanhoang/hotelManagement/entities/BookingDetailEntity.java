package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "booking_detail")
public class BookingDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "checkinDate", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date checkinDate;
    
    @Column(name = "checkoutDate", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date checkoutDate;
    
    private int totalServiceCharge;
    private int numberOfCustomer;
    private int timeIn;

    // note
    @ManyToOne
    @JoinColumn(name = "roomId")
    private RoomEntity roomEntities;

    @OneToOne
    @JoinColumn(name = "bookingId")
    private BookingEntity bookingEntity;

    @OneToOne
    @JoinColumn(name = "serviceDetailId")
    private ServiceDetailEntity serviceDetailEntity;

    public BookingDetailEntity(Date checkinDate, Date checkoutDate, int totalServiceCharge, int numberOfCustomer, int timeIn) {
        this.checkinDate = checkinDate;
        this.checkoutDate = checkoutDate;
        this.totalServiceCharge = totalServiceCharge;
        this.numberOfCustomer = numberOfCustomer;
        this.timeIn = timeIn;
    }

    public BookingDetailEntity(Date checkinDate, Date checkoutDate, int totalServiceCharge, int numberOfCustomer, int timeIn, RoomEntity roomEntities, BookingEntity bookingEntity) {
        this.checkinDate = checkinDate;
        this.checkoutDate = checkoutDate;
        this.totalServiceCharge = totalServiceCharge;
        this.numberOfCustomer = numberOfCustomer;
        this.timeIn = timeIn;
        this.roomEntities = roomEntities;
        this.bookingEntity = bookingEntity;
    }
    
    

    public BookingDetailEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCheckinDate() {
        return checkinDate;
    }

    public void setCheckinDate(Date checkinDate) {
        this.checkinDate = checkinDate;
    }

    public Date getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(Date checkoutDate) {
        this.checkoutDate = checkoutDate;
    }

    public int getTotalServiceCharge() {
        return totalServiceCharge;
    }

    public void setTotalServiceCharge(int totalServiceCharge) {
        this.totalServiceCharge = totalServiceCharge;
    }

    public int getNumberOfCustomer() {
        return numberOfCustomer;
    }

    public void setNumberOfCustomer(int numberOfCustomer) {
        this.numberOfCustomer = numberOfCustomer;
    }

    public int getTimeIn() {
        return timeIn;
    }

    public void setTimeIn(int timeIn) {
        this.timeIn = timeIn;
    }

    public RoomEntity getRoomEntities() {
        return roomEntities;
    }

    public void setRoomEntities(RoomEntity roomEntities) {
        this.roomEntities = roomEntities;
    }

    public BookingEntity getBookingEntity() {
        return bookingEntity;
    }

    public void setBookingEntity(BookingEntity bookingEntity) {
        this.bookingEntity = bookingEntity;
    }

    public ServiceDetailEntity getServiceDetailEntity() {
        return serviceDetailEntity;
    }

    public void setServiceDetailEntity(ServiceDetailEntity serviceDetailEntity) {
        this.serviceDetailEntity = serviceDetailEntity;
    }
    
}

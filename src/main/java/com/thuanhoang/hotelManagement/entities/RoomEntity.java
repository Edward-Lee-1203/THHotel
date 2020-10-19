package com.thuanhoang.hotelManagement.entities;

import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "room")
public class RoomEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String roomName;
    private String status;

    @ManyToOne
    @JoinColumn(name = "roomTypeId")
    private RoomTypeEntity roomTypeEntity;

    // note
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "roomEntities")
    private List<BookingDetailEntity> bookingDetailEntity;

    public RoomEntity(int id, String roomName, String status) {
        this.id = id;
        this.roomName = roomName;
        this.status = status;
    }

    public RoomEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public RoomTypeEntity getRoomTypeEntity() {
        return roomTypeEntity;
    }

    public void setRoomTypeEntity(RoomTypeEntity roomTypeEntity) {
        this.roomTypeEntity = roomTypeEntity;
    }

    public List<BookingDetailEntity> getBookingDetailEntity() {
        return bookingDetailEntity;
    }

    public void setBookingDetailEntity(List<BookingDetailEntity> bookingDetailEntity) {
        this.bookingDetailEntity = bookingDetailEntity;
    }
    
}

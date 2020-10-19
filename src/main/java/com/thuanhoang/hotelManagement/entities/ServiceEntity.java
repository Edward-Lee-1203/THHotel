package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "service")
public class ServiceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String type;
    private String name;
    private int price;

    @OneToMany(mappedBy = "serviceEntity")
    private List<ServiceDetailEntity> serviceDetailEntity;

    public ServiceEntity(int id, String type, String name, int price) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.price = price;
    }

    public ServiceEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}

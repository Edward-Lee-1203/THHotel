package com.thuanhoang.hotelManagement.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "roles")
public class RolesEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String roleName;
    private String userName;

    @OneToMany(mappedBy = "roleEntity", fetch = FetchType.EAGER)
    private List<UserEntity> userEntity;

    public RolesEntity(int id, String roleName, String userName) {
        this.id = id;
        this.roleName = roleName;
        this.userName = userName;
    }

    public RolesEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}

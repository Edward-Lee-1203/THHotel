/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.dao;

import com.thuanhoang.hotelManagement.entities.CreditCardEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public interface CreditCardDaoIF extends CrudRepository<CreditCardEntity, Integer>{
    CreditCardEntity findByCreditCardNumber(String number);
}

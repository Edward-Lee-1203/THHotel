/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thuanhoang.hotelManagement.service;

import com.thuanhoang.hotelManagement.dao.CreditCardDaoIF;
import com.thuanhoang.hotelManagement.entities.CreditCardEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */

@Service
public class CreditCardService {
    @Autowired
    CreditCardDaoIF creditCardDao;
    
    public List<CreditCardEntity> getAllCreditCard() {
        return (List<CreditCardEntity>) creditCardDao.findAll();
    }
    
    public boolean depositMoney(int amount, String number) {
        CreditCardEntity creditcard = creditCardDao.findByCreditCardNumber(number);
        
        if (creditcard != null && amount <= creditcard.getBalance()) {
            creditcard.setBalance(creditcard.getBalance() - amount);
            creditCardDao.save(creditcard);
            return true;
        }
        return false;
    }
}


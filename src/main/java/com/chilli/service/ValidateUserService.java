package com.chilli.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.User;
import com.chilli.repository.UserRepository;

/**
 * 
 * @author Arch
 *
 */
@Service
public class ValidateUserService {
    
    @Autowired
    UserRepository userRepo;
    

    public boolean checkValidatUser(String userId) {
        
        boolean check = false;
        User u = new User();
        u = userRepo.findByUserId(userId);
        if(u != null) {
            check = true;
        }
        
        return check;
    }
    

    
    public void insertOrUpdateUser(User userForm) {
    	User user = new User();
    	user.setBirthday(userForm.getBirthday());
    	user.setUserId(userForm.getUserId().toUpperCase());
    	user.setEmail(userForm.getEmail());
    	user.setName(userForm.getName());
    	user.setPhoneNumber(userForm.getPhoneNumber());
    	user.setPassword("123456");
    	user.setIsLoin("0");
        userRepo.save(user);

    }
}

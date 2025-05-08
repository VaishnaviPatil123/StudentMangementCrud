package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class SmsSrImpl  implements SmsService {

    @Autowired
    private SmsRepository sr;

    @Override
    public void save(SmsEntity entity) {
        sr.save(entity);
    }

    @Override
    public SmsEntity login(String email, String password) {
        return sr.findByEmailAndPassword(email, password);
    } 
    
    @Override
    public List<SmsEntity> getAllStudents() {
        return sr.findAll(); // returns all student records for admin
    }
    @Override
    public SmsEntity getById(Long id) {
        Optional<SmsEntity> student = sr.findById(id);  // no error now
        return student.orElse(null);
    }


    @Override
    public void deleteById(Long id) {
        sr.deleteById(id);
    }
}



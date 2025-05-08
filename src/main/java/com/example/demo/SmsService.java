package com.example.demo;

import java.util.List;


public interface SmsService {
	void save(SmsEntity entity);
	
    SmsEntity login(String email, String password);
    
    List<SmsEntity> getAllStudents();

    SmsEntity getById(Long id);
    
    void deleteById(Long id);

}

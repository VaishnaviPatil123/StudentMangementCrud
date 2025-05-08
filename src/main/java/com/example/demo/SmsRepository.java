package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface SmsRepository extends JpaRepository<SmsEntity, Long> {

    SmsEntity findByEmailAndPassword(String email, String password);
    
    //SmsEntity findById(Long id);
    
   //void deleteById(Long id);

} 



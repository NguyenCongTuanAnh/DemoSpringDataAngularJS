package com.example.demospringdataangularjs.repository;

import com.example.demospringdataangularjs.entity.Staff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffRepositoryInterface extends JpaRepository<Staff, String> {

}

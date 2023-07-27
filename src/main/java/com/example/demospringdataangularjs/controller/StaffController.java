package com.example.demospringdataangularjs.controller;

import com.example.demospringdataangularjs.entity.Staff;
import com.example.demospringdataangularjs.entity.UserInfo;
import com.example.demospringdataangularjs.repository.StaffRepositoryInterface;
import com.example.demospringdataangularjs.repository.UserInfoRepositoryInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class StaffController {
    @Autowired
    public StaffRepositoryInterface staffRepository;
    @Autowired
    public UserInfoRepositoryInterface userInfoRepository;
    @RequestMapping(value = "/staff", method = RequestMethod.GET)
    public ResponseEntity<List<Staff>> getAll(){
        List<Staff> staffList = this.staffRepository.findAll();
        return new ResponseEntity<>(staffList, HttpStatus.OK);
    }
    @RequestMapping(value = "/staff/{id}", method = RequestMethod.GET)
    public ResponseEntity<Staff> getOne(@PathVariable String id){
        System.out.println("cahucaucauc"+id);
        Staff staff = this.staffRepository.findById(id).get();
      if (staff == null){
          return new ResponseEntity<>(HttpStatus.NO_CONTENT);
      }
        return new ResponseEntity<>(staff, HttpStatus.OK);
    }
    @RequestMapping(value = "/staff", method = RequestMethod.POST)
    public Staff save(@RequestBody Staff staff){
        UserInfo userInfo = this.userInfoRepository.save(staff.getUserInfo());
        System.out.println("userInfo = " + userInfo.toString());
        Staff temp  = new Staff();
        temp.setStatus(staff.getStatus());
        temp.setUserInfo(userInfo);
        System.out.println(temp.toString());
        return this.staffRepository.save(temp);

    }
    @RequestMapping(value = "/staff", method = RequestMethod.PUT)
    public Staff update(@RequestBody Staff staff){
        return this.staffRepository.save(staff);

    }
}

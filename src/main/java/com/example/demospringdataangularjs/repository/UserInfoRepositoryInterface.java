package com.example.demospringdataangularjs.repository;

import com.example.demospringdataangularjs.entity.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserInfoRepositoryInterface extends JpaRepository<UserInfo, UUID> {
}

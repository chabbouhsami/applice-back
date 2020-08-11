package com.ettawil.applice.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ettawil.applice.model.entity.user.User;

public interface IUserDao extends JpaRepository<User, Integer> {

	@Query("SELECT u FROM User u WHERE UPPER(u.email) = UPPER(?1) ")
	User findUserByEmail(String email);
}

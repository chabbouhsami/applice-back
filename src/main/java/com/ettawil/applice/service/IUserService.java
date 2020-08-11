package com.ettawil.applice.service;

import java.util.List;
import java.util.Optional;

import com.ettawil.applice.model.entity.user.User;

public interface IUserService {

	public User saveUser(User user);

	public User updateUser(User user);

	public void deleteUser(User user);

	public Optional<User> findUser(int userCode);

	public User findUserByEmail(User user);

	public List<User> findAll();

	public boolean checkIfExist(User user);

}

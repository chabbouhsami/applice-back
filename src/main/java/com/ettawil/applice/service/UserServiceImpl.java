package com.ettawil.applice.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.IUserDao;
import com.ettawil.applice.model.entity.user.User;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao userDao;

	@Override
	public User saveUser(User user) {
		return userDao.save(user);
	}

	@Override
	public User updateUser(User user) {
		return userDao.save(user);
	}

	@Override
	public void deleteUser(User user) {
		userDao.delete(user);
	}

	@Override
	public Optional<User> findUser(int user) {
			return userDao.findById(user);
	}

	@Override
	public boolean checkIfExist(User user) {
		return findUserByEmail(user) != null;
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User findUserByEmail(User user) {
		return userDao.findUserByEmail(user.getEmail());
	}

}

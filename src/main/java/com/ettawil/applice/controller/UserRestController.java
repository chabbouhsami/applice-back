package com.ettawil.applice.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ettawil.applice.model.dto.UserDTO;
import com.ettawil.applice.model.entity.user.User;
import com.ettawil.applice.service.UserServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/user")
@Api(value = "User Rest Controller: contains all operations for managing users")
public class UserRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(UserRestController.class);

	@Autowired
	private UserServiceImpl userService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the user by code", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the user doesn't exist") })
	public ResponseEntity<UserDTO> searchUserByCode(@PathVariable int id) {
		Optional<User> user = userService.findUser(id);
		if (user.isPresent()) {
			UserDTO userDto = mapUserToUserDTO(user.get());
			return new ResponseEntity<>(userDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all Users", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Users database is empty") })
	public ResponseEntity<List<UserDTO>> searchAllUsers() {

		List<User> users = userService.findAll();

		if (!CollectionUtils.isEmpty(users)) {

			List<UserDTO> usersDto = users.stream().map(user -> {
				return mapUserToUserDTO(user);
			}).collect(Collectors.toList());
			return new ResponseEntity<List<UserDTO>>(usersDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<UserDTO>>(HttpStatus.NO_CONTENT);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new User", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "User already existing"),
			@ApiResponse(code = 304, message = "User not added") })
	public ResponseEntity<UserDTO> createNewUser(@RequestBody UserDTO userDTORequest) {
		if (userService.checkIfExist(mapUserDTOToUser(userDTORequest))) {
			return new ResponseEntity<UserDTO>(HttpStatus.CONFLICT);
		}
		User userRequest = mapUserDTOToUser(userDTORequest);
		User userResponse = userService.saveUser(userRequest);
		if (userResponse != null) {
			UserDTO userDTO = mapUserToUserDTO(userResponse);
			return new ResponseEntity<UserDTO>(userDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<UserDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update User", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "User not found"),
			@ApiResponse(code = 200, message = "User successfully modified"),
			@ApiResponse(code = 304, message = "User unsuccesully modified") })
	public ResponseEntity<UserDTO> updateUser(@PathVariable int id, @RequestBody UserDTO userDTORequest) {
		if (!userService.findUser(id).isPresent()) {
			return new ResponseEntity<UserDTO>(HttpStatus.NOT_FOUND);
		}
		User userRequest = mapUserDTOToUser(userDTORequest);
		User userResponse = userService.updateUser(userRequest);
		if (userResponse != null) {
			UserDTO userDTO = mapUserToUserDTO(userResponse);
			return new ResponseEntity<UserDTO>(userDTO, HttpStatus.OK);
		}
		return new ResponseEntity<UserDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete User", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "User not found"),
			@ApiResponse(code = 200, message = "User successfully deleted"),
			@ApiResponse(code = 304, message = "User unsuccesully deleted") })
	public ResponseEntity<UserDTO> deleteUser(@PathVariable int id) {
		Optional<User> user = userService.findUser(id);

		if (!user.isPresent()) {
			return new ResponseEntity<UserDTO>(HttpStatus.NOT_FOUND);
		}
		userService.deleteUser(user.get());
		return new ResponseEntity<UserDTO>(mapUserToUserDTO(user.get()), HttpStatus.OK);
	}
	
	@CrossOrigin
	@GetMapping("/")
	@ApiOperation(value = "Get User's auhentication", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "User not found"),
			@ApiResponse(code = 304, message = "User unsuccesully deleted") })
	public ResponseEntity<UserDTO> getUser(@PathVariable int id) {
		Optional<User> user = userService.findUser(id);

		if (!user.isPresent()) {
			return new ResponseEntity<UserDTO>(HttpStatus.NOT_FOUND);
		}
		userService.deleteUser(user.get());
		return new ResponseEntity<UserDTO>(mapUserToUserDTO(user.get()), HttpStatus.OK);
	}
	
		

	private User mapUserDTOToUser(UserDTO userDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(userDto, User.class);
	}

	private UserDTO mapUserToUserDTO(User user) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(user, UserDTO.class);
	}
}

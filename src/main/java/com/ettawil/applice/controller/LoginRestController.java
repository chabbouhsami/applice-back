package com.ettawil.applice.controller;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
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
@RequestMapping("/rest/api/login")
@Api(value = "Login Rest Controller: check authentication of user")
public class LoginRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(LoginRestController.class);

	@Autowired
	private UserServiceImpl userService;


	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Get User's auhentication", response = UserDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "User not found"),
			@ApiResponse(code = 304, message = "User unsuccesully deleted") })
	public ResponseEntity<UserDTO> getUser(@RequestBody UserDTO userDTORequest) {
		User user = userService.findUserByEmail(mapUserDTOToUser(userDTORequest));

		if (user == null) {
			return new ResponseEntity<UserDTO>(HttpStatus.NOT_FOUND);
		}

		if (!userDTORequest.getPassword().contentEquals(user.getPassword())) {
			return new ResponseEntity<UserDTO>(HttpStatus.UNAUTHORIZED);
		}
		return new ResponseEntity<UserDTO>(mapUserToUserDTO(user), HttpStatus.OK);

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

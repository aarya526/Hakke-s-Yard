package springmvc_example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import springmvc_example.model.User;

@Service
public interface UserService {

public List<User> listAllUsers();
	
	public void add(User user);
	
	public void update(User user);
	
	public void delete(User user);
	
	public User findUserById(String id);
}

package com.bluepicks.service;


import com.bluepicks.entity.User;
import com.bluepicks.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.List;


@Service
public class InitDatabaseService {

    @Autowired
    private UserRepository userRepository;

    @PostConstruct
    void init(){
        User admin = new User();
        admin.setId(1L);
        admin.setLogin("chrono");
        admin.setPassword("hit");
        admin.setRole("ROLE_ADMIN");
        admin.setAvatarUrl("http://i59.tinypic.com/2w4hhsh.jpg");
        userRepository.save(admin);

        User admin2 = new User();
        admin2.setId(2L);
        admin2.setLogin("jelcyn");
        admin2.setPassword("hit");
        admin2.setRole("ROLE_ADMIN");
        admin2.setAvatarUrl("http://i59.tinypic.com/2w4hhsh.jpg");
        userRepository.save(admin2);

    }

    public User findById(Long id)
    {
        return userRepository.findOne(id);
    }

    public void update(User updatedUser, Long id)
    {
        User user = userRepository.findOne(id);
        updatedUser.setId(id);
        updatedUser.setLogin(user.getLogin());
        updatedUser.setRole(user.getRole());
        updatedUser.setPassword(user.getPassword());
        userRepository.save(updatedUser);
    }

    public User findByLogin(String login){
        List<User> users = userRepository.findAll();
        for (User user: users
             ) {
            if(user.getLogin().equals(login))
                return user;
        }
        return null;
    }
}

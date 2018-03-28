package com.websiteModel.service;

import com.websiteModel.entity.Message;
import com.websiteModel.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class MessageService {

    @Autowired
    MessageRepository messageRepository;

    @Autowired
    InitDatabaseService initDatabaseService;

    public void saveInDatabase(Message message) {
        message.setId(messageRepository.count() + 1);
        message.setDate(new Date());
        message.setReceived_by_admin1(false);
        message.setReceived_by_admin2(false);
        messageRepository.save(message);
    }

    public List<Message> findAll() {
        return messageRepository.findAll();
    }

    public Message findById(Long id) {
        return messageRepository.findOne(id);
    }

    public void update(Message message)
    {
        messageRepository.save(message);
    }

    public Boolean checkIfNewMessages()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if(auth.getName().equals(initDatabaseService.findById(1L).getLogin()))
        {
            for (Message message: messageRepository.findAll()
                 ) {
                if(!message.getReceived_by_admin1())
                    return true;
            }
        }
        if(auth.getName().equals(initDatabaseService.findById(2L).getLogin()))
        {
            for (Message message: messageRepository.findAll()
                    ) {
                if(!message.getReceived_by_admin2())
                    return true;
            }
        }
        return false;
    }
}

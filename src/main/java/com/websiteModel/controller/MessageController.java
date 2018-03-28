package com.websiteModel.controller;


import com.websiteModel.entity.Message;
import com.websiteModel.service.InitDatabaseService;
import com.websiteModel.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Collections;
import java.util.List;

@Controller
public class MessageController {

    @Autowired
    MessageService messageService;

    @Autowired
    InitDatabaseService initDatabaseService;

    @ModelAttribute("messageForm")
    public Message builder()
    {
        return new Message();
    }

    @RequestMapping(value = "/send_message", method = RequestMethod.GET)
    public String sendMessage()
    {
        return "send_message";
    }

    @RequestMapping(value = "/send_message", method = RequestMethod.POST)
    public String processSendingMessage(@ModelAttribute("messageForm") Message message, Model model)
    {
        messageService.saveInDatabase(message);
        return "redirect:/";
    }

    @RequestMapping(value = "/message")
    public String message(Model model)
    {
        List<Message> messages = messageService.findAll();
        Collections.reverse(messages);
        model.addAttribute("messages",messages);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if(auth.getName().equals(initDatabaseService.findById(1L).getLogin())){
             model.addAttribute("author","1");
        }
        else
            model.addAttribute("author","2");

        return "messages";
    }

    @RequestMapping(value = "/message/{id}")
    public String showMessage(Model model, @PathVariable Long id)
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if(auth.getName().equals(initDatabaseService.findById(1L).getLogin())) {
            Message message = messageService.findById(id);
            message.setReceived_by_admin1(true);
            messageService.update(message);
        }
        else {
            Message message = messageService.findById(id);
            message.setReceived_by_admin2(true);
            messageService.update(message);
        }

        model.addAttribute("message", messageService.findById(id));
        return "message";
    }
}

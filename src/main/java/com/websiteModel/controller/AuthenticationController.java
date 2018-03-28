package com.websiteModel.controller;

import com.websiteModel.entity.User;
import com.websiteModel.service.InitDatabaseService;
import com.websiteModel.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class AuthenticationController {

    @Autowired
    MessageService messageService;

    @Autowired
    InitDatabaseService initDatabaseService;

    @ModelAttribute("userForm")
    public User builder() {
        return new User();
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        if(messageService.checkIfNewMessages())
        model.addAttribute("messages","You have new messages!");
        else
        model.addAttribute("messages","");
        return "admin";
    }

    @RequestMapping(value = "/authentication", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("authentication");

        return model;
    }

    @RequestMapping(value = "/update_avatar", method = RequestMethod.GET)
    public String updateAvatar(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = initDatabaseService.findByLogin(auth.getName());
            model.addAttribute("user",user);
    return "update_avatar";
    }

    @RequestMapping(value = "/update_avatar", method = RequestMethod.POST)
    public String updateAvatarProcess(Model model, @ModelAttribute("userForm") User user) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User loggedUser = initDatabaseService.findByLogin(auth.getName());
        initDatabaseService.update(user, loggedUser.getId());
        return "redirect:admin";
    }
}
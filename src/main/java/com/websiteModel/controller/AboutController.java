package com.websiteModel.controller;


import com.websiteModel.entity.About;
import com.websiteModel.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

    @Autowired
    AboutService aboutService;

    @ModelAttribute("aboutForm")
    public About builder() { return new About(); }

    @ModelAttribute("aboutUpdateForm")
    public About updateBuilder() { return new About(); }

    @RequestMapping(value = "/add_about", method = RequestMethod.GET)
    public String addAbout(Model model){
        return "add_about";
    }

    @RequestMapping(value = "/add_about", method = RequestMethod.POST)
    public String addAboutProcessing(@ModelAttribute("aboutForm") About about){
        aboutService.saveInDatabase(about);
        return "redirect:admin";
    }

    @RequestMapping(value = "/update_about", method = RequestMethod.GET)
    public String update(Model model)
    {
        model.addAttribute("about", aboutService.findById(1L));
        return "update_about";
    }

    @RequestMapping(value = "/update_about", method = RequestMethod.POST)
    public String processAboutUpdating(@ModelAttribute("aboutUpdateForm") About about)
    {
        aboutService.update(about,1L);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/about")
    public String about(Model model)
    {
        model.addAttribute("about",aboutService.findById(1L));
        return "about";
    }
}

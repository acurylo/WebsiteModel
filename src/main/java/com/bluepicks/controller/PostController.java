package com.bluepicks.controller;


import com.bluepicks.entity.Post;
import com.bluepicks.service.InitDatabaseService;
import com.bluepicks.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private InitDatabaseService initDatabaseService;

    @ModelAttribute("postForm")
    public Post builder() {
        return new Post();
    }

    @RequestMapping(value= "/add_post" ,method = RequestMethod.GET)
    public String post(){ return "post"; }

    @RequestMapping(value = "/add_post",method = RequestMethod.POST)
    public String processAddingPost(@ModelAttribute("postForm") Post post) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        post.setAuthor(auth.getName());
        post.setAvatarUrl(initDatabaseService.findByLogin(auth.getName()).getAvatarUrl());
        postService.saveInDatabase(post);
        return "redirect:admin";
    }
}